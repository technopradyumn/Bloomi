import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

/// Represents a detected country with ISO-2 code, full display name, and flag emoji.
class DetectedCountry {
  final String code; // 2-letter uppercase ISO code, e.g. "IN", "US", "GB"
  final String name; // e.g. "India", "United States", "United Kingdom"
  final String flag; // e.g. "🇮🇳", "🇺🇸", "🇬🇧"

  const DetectedCountry({
    required this.code,
    required this.name,
    required this.flag,
  });

  @override
  String toString() => '$name ($code) $flag';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DetectedCountry &&
          runtimeType == other.runtimeType &&
          code.toUpperCase() == other.code.toUpperCase();

  @override
  int get hashCode => code.toUpperCase().hashCode;
}

/// Service that auto-detects the user's country using:
/// 1. Instant SharedPreferences cache if available.
/// 2. Device system locale / platform settings (offline & zero-permission).
/// 3. Asynchronous network IP geocoder fallback for automatic refinement.
class CountryDetectionService {
  static const String _cachedCodeKey = 'bloomi_detected_country_code';
  static const String _cachedNameKey = 'bloomi_detected_country_name';

  static DetectedCountry? _inMemoryCached;

  /// ISO 3166-1 alpha-2 code to common English Country Name mapping.
  static const Map<String, String> _countryCodeToName = {
    'IN': 'India',
    'US': 'United States',
    'GB': 'United Kingdom',
    'CA': 'Canada',
    'AU': 'Australia',
    'DE': 'Germany',
    'FR': 'France',
    'ES': 'Spain',
    'IT': 'Italy',
    'BR': 'Brazil',
    'MX': 'Mexico',
    'ID': 'Indonesia',
    'PK': 'Pakistan',
    'BD': 'Bangladesh',
    'NP': 'Nepal',
    'LK': 'Sri Lanka',
    'JP': 'Japan',
    'CN': 'China',
    'KR': 'South Korea',
    'RU': 'Russia',
    'SA': 'Saudi Arabia',
    'AE': 'United Arab Emirates',
    'EG': 'Egypt',
    'TR': 'Turkey',
    'NG': 'Nigeria',
    'ZA': 'South Africa',
    'KE': 'Kenya',
    'ET': 'Ethiopia',
    'TH': 'Thailand',
    'VN': 'Vietnam',
    'PH': 'Philippines',
    'MY': 'Malaysia',
    'SG': 'Singapore',
    'NZ': 'New Zealand',
    'NL': 'Netherlands',
    'SE': 'Sweden',
    'NO': 'Norway',
    'DK': 'Denmark',
    'FI': 'Finland',
    'PL': 'Poland',
    'UA': 'Ukraine',
    'PT': 'Portugal',
    'GR': 'Greece',
    'IE': 'Ireland',
    'AT': 'Austria',
    'CH': 'Switzerland',
    'BE': 'Belgium',
    'IL': 'Israel',
    'AR': 'Argentina',
    'CO': 'Colombia',
    'CL': 'Chile',
    'PE': 'Peru',
    'DZ': 'Algeria',
    'MA': 'Morocco',
    'IQ': 'Iraq',
    'AF': 'Afghanistan',
    'IR': 'Iran',
    'GH': 'Ghana',
    'TZ': 'Tanzania',
    'UG': 'Uganda',
    'MM': 'Myanmar',
    'KH': 'Cambodia',
    'LA': 'Laos',
    'UZ': 'Uzbekistan',
    'KZ': 'Kazakhstan',
    'RO': 'Romania',
    'CZ': 'Czech Republic',
    'HU': 'Hungary',
    'SK': 'Slovakia',
    'BG': 'Bulgaria',
    'HR': 'Croatia',
    'RS': 'Serbia',
    'QA': 'Qatar',
    'KW': 'Kuwait',
    'OM': 'Oman',
  };

  /// Converts any 2-letter ISO country code into its corresponding Unicode flag emoji.
  static String countryCodeToEmoji(String countryCode) {
    if (countryCode.length != 2) return '🌐';
    final upper = countryCode.toUpperCase();
    final first = upper.codeUnitAt(0);
    final second = upper.codeUnitAt(1);
    if (first < 65 || first > 90 || second < 65 || second > 90) return '🌐';
    final int firstLetter = first - 0x41 + 0x1F1E6;
    final int secondLetter = second - 0x41 + 0x1F1E6;
    return String.fromCharCode(firstLetter) + String.fromCharCode(secondLetter);
  }

  /// Resolves an ISO code to its English country name.
  static String getCountryName(String code) {
    final upper = code.toUpperCase();
    return _countryCodeToName[upper] ?? upper;
  }

  /// Synchronous method providing instant result for UI rendering without delay or flicker.
  static DetectedCountry getCachedOrInitialCountry() {
    if (_inMemoryCached != null) return _inMemoryCached!;

    String code = 'IN'; // Safe default
    try {
      final sysCode = PlatformDispatcher.instance.locale.countryCode;
      if (sysCode != null && sysCode.trim().isNotEmpty && sysCode.length == 2) {
        code = sysCode.toUpperCase();
      }
    } catch (_) {}

    final name = getCountryName(code);
    final flag = countryCodeToEmoji(code);
    _inMemoryCached = DetectedCountry(code: code, name: name, flag: flag);
    return _inMemoryCached!;
  }

  /// Asynchronously detects the country. Checks cache -> system locale -> HTTP IP geocode.
  static Future<DetectedCountry> detectCountry() async {
    // 1. Check local persistent storage
    try {
      final prefs = await SharedPreferences.getInstance();
      final cachedCode = prefs.getString(_cachedCodeKey);
      final cachedName = prefs.getString(_cachedNameKey);

      if (cachedCode != null && cachedCode.isNotEmpty) {
        final flag = countryCodeToEmoji(cachedCode);
        final name = cachedName ?? getCountryName(cachedCode);
        _inMemoryCached = DetectedCountry(code: cachedCode, name: name, flag: flag);
        // Still trigger background IP refresh in case of travel/change, but return immediately
        _refreshViaNetworkInBackground();
        return _inMemoryCached!;
      }
    } catch (_) {}

    // 2. Fallback to platform dispatcher locale
    String detectedCode = 'IN';
    try {
      final sysCode = PlatformDispatcher.instance.locale.countryCode;
      if (sysCode != null && sysCode.trim().isNotEmpty && sysCode.length == 2) {
        detectedCode = sysCode.toUpperCase();
      }
    } catch (_) {}

    String detectedName = getCountryName(detectedCode);
    String detectedFlag = countryCodeToEmoji(detectedCode);
    _inMemoryCached = DetectedCountry(code: detectedCode, name: detectedName, flag: detectedFlag);

    // 3. Try keyless network reverse geocoder with short timeout
    try {
      final uri = Uri.parse(
        'https://api.bigdatacloud.net/data/reverse-geocode-client?localityLanguage=en',
      );
      final response = await http.get(uri).timeout(const Duration(seconds: 3));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        final code = (data['countryCode'] as String?)?.trim().toUpperCase();
        final name = (data['countryName'] as String?)?.trim();

        if (code != null && code.length == 2) {
          detectedCode = code;
          detectedName = (name != null && name.isNotEmpty) ? name : getCountryName(code);
          detectedFlag = countryCodeToEmoji(code);
          _inMemoryCached = DetectedCountry(code: detectedCode, name: detectedName, flag: detectedFlag);
        }
      }
    } catch (_) {
      // Offline or network error: device locale already held in _inMemoryCached
    }

    // Cache the detected result
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_cachedCodeKey, detectedCode);
      await prefs.setString(_cachedNameKey, detectedName);
    } catch (_) {}

    return _inMemoryCached!;
  }

  static void _refreshViaNetworkInBackground() async {
    try {
      final uri = Uri.parse(
        'https://api.bigdatacloud.net/data/reverse-geocode-client?localityLanguage=en',
      );
      final response = await http.get(uri).timeout(const Duration(seconds: 3));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        final code = (data['countryCode'] as String?)?.trim().toUpperCase();
        final name = (data['countryName'] as String?)?.trim();

        if (code != null && code.length == 2) {
          final flag = countryCodeToEmoji(code);
          final resolvedName = (name != null && name.isNotEmpty) ? name : getCountryName(code);
          _inMemoryCached = DetectedCountry(code: code, name: resolvedName, flag: flag);

          final prefs = await SharedPreferences.getInstance();
          await prefs.setString(_cachedCodeKey, code);
          await prefs.setString(_cachedNameKey, resolvedName);
        }
      }
    } catch (_) {}
  }
}

