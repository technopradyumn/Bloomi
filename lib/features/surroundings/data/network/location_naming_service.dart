import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LocationNamingService {
  static const String _cachedNameKey = 'bloomi_cached_location_name';
  static final _geocoding = geo.Geocoding();

  /// Resolves latitude and longitude coordinates to a clean, human-readable
  /// location name (e.g. "Koramangala, Bengaluru" or "Rampur Village, Alwar").
  /// Never returns raw coordinates!
  static Future<String> resolveLocationName(double lat, double lon) async {
    // 1. Try native geocoding (Google Play Services / Apple CLGeocoder)
    try {
      final placemarks = await _geocoding
          .placemarkFromCoordinates(lat, lon)
          .timeout(const Duration(seconds: 4));
      if (placemarks.isNotEmpty) {
        final p = placemarks.first;
        final subLoc = p.subLocality?.trim();
        final loc = p.locality?.trim();
        final subAdmin = p.subAdministrativeArea?.trim();
        final admin = p.administrativeArea?.trim();

        String resolved = '';
        if (subLoc != null &&
            subLoc.isNotEmpty &&
            loc != null &&
            loc.isNotEmpty &&
            subLoc != loc) {
          resolved = '$subLoc, $loc';
        } else if (loc != null && loc.isNotEmpty) {
          if (admin != null && admin.isNotEmpty && admin != loc) {
            resolved = '$loc, $admin';
          } else {
            resolved = loc;
          }
        } else if (subLoc != null && subLoc.isNotEmpty) {
          resolved = subLoc;
        } else if (subAdmin != null && subAdmin.isNotEmpty) {
          resolved = subAdmin;
        } else if (admin != null && admin.isNotEmpty) {
          resolved = admin;
        }

        if (resolved.isNotEmpty) {
          await _cacheLocationName(resolved);
          return resolved;
        }
      }
    } catch (e) {
      debugPrint('Platform geocoding notice: $e. Falling back to HTTP geocoder...');
    }

    // 2. HTTP Fallback: Free, keyless reverse geocoder for devices without Play Services
    try {
      final uri = Uri.parse(
        'https://api.bigdatacloud.net/data/reverse-geocode-client?latitude=$lat&longitude=$lon&localityLanguage=en',
      );
      final response = await http.get(uri).timeout(const Duration(seconds: 4));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        final locality = (data['locality'] as String?)?.trim() ?? '';
        final city = (data['city'] as String?)?.trim() ?? '';
        final state = (data['principalSubdivision'] as String?)?.trim() ?? '';

        String resolved = '';
        if (locality.isNotEmpty && city.isNotEmpty && locality != city) {
          resolved = '$locality, $city';
        } else if (city.isNotEmpty) {
          resolved = state.isNotEmpty && state != city ? '$city, $state' : city;
        } else if (locality.isNotEmpty) {
          resolved = locality;
        } else if (state.isNotEmpty) {
          resolved = state;
        }

        if (resolved.isNotEmpty) {
          await _cacheLocationName(resolved);
          return resolved;
        }
      }
    } catch (e) {
      debugPrint('HTTP reverse geocode notice: $e');
    }

    // 3. Fallback to cached location name
    final cached = await getCachedLocationName();
    if (cached != null && cached.isNotEmpty) {
      return cached;
    }

    return 'Your Area';
  }

  static Future<void> _cacheLocationName(String name) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_cachedNameKey, name);
    } catch (_) {}
  }

  static Future<String?> getCachedLocationName() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_cachedNameKey);
    } catch (_) {
      return null;
    }
  }
}
