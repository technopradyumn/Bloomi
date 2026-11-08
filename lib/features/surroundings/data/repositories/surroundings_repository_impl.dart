import 'package:bloomi/features/surroundings/data/local/surroundings_local_data_source.dart';
import 'package:bloomi/features/surroundings/data/network/location_naming_service.dart';
import 'package:bloomi/features/surroundings/data/network/surroundings_remote_data_source.dart';
import 'package:bloomi/features/surroundings/domain/entities/surroundings_entity.dart';
import 'package:bloomi/features/surroundings/domain/repositories/surroundings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SurroundingsRepositoryImpl implements SurroundingsRepository {
  final SurroundingsLocalDataSource _localDataSource;
  final SurroundingsRemoteDataSource _remoteDataSource;
  final SharedPreferences? _prefs;

  CityLocationEntity _selectedCity = kDefaultCities.first;

  SurroundingsRepositoryImpl({
    required SurroundingsLocalDataSource localDataSource,
    required SurroundingsRemoteDataSource remoteDataSource,
    SharedPreferences? prefs,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _prefs = prefs;

  @override
  CityLocationEntity get selectedCity => _selectedCity;

  @override
  void selectCity(CityLocationEntity city) {
    _selectedCity = city;
  }

  @override
  Future<SurroundingsEntity> fetchForLocation(double lat, double lon, String cityName) async {
    try {
      final remote = await _remoteDataSource.fetchSurroundings(
        lat,
        lon,
        cityName,
        locationName: cityName,
      );
      await _localDataSource.cacheSurroundings(remote);
      return remote;
    } catch (_) {
      final cached = await _localDataSource.getCachedSurroundings();
      if (cached != null) return cached;
      return SurroundingsEntity.fallback(cityName: cityName, locationName: cityName);
    }
  }

  @override
  Future<SurroundingsEntity?> detectLocationAndFetch() async {
    final position = await _remoteDataSource.getCurrentPosition();
    if (position != null) {
      if (_prefs != null) {
        await _prefs.setDouble('bloomi_last_latitude', position.latitude);
        await _prefs.setDouble('bloomi_last_longitude', position.longitude);
      }
      final resolvedName = await LocationNamingService.resolveLocationName(
        position.latitude,
        position.longitude,
      );
      return fetchForLocation(position.latitude, position.longitude, resolvedName);
    }
    return null;
  }

  @override
  Future<SurroundingsEntity?> getSurroundingsData({bool forceRefresh = false}) async {
    if (!forceRefresh) {
      final cached = await _localDataSource.getCachedSurroundings();
      if (cached != null && DateTime.now().difference(cached.fetchedAt).inMinutes < 15) {
        return cached;
      }
    }

    // Always prioritize real GPS current location:
    try {
      final position = await _remoteDataSource.getCurrentPosition();
      if (position != null) {
        if (_prefs != null) {
          await _prefs.setDouble('bloomi_last_latitude', position.latitude);
          await _prefs.setDouble('bloomi_last_longitude', position.longitude);
        }
        final resolvedName = await LocationNamingService.resolveLocationName(
          position.latitude,
          position.longitude,
        );
        return await fetchForLocation(position.latitude, position.longitude, resolvedName);
      }
    } catch (_) {}

    // Fall back to last saved GPS coordinates with resolved area:
    if (_prefs != null) {
      final lastLat = _prefs.getDouble('bloomi_last_latitude');
      final lastLon = _prefs.getDouble('bloomi_last_longitude');
      if (lastLat != null && lastLon != null) {
        final cachedName = await LocationNamingService.getCachedLocationName() ?? 'Your Area';
        return await fetchForLocation(lastLat, lastLon, cachedName);
      }
    }

    // No GPS, no saved coordinates — return null so the UI shows "location unavailable".
    // NEVER fall back to a default city with fake/dummy data.
    final cached = await _localDataSource.getCachedSurroundings();
    return cached; // May be null — UI handles that.
  }
}
