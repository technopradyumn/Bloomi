import 'package:bloomi/core/network/api_client.dart';
import 'package:bloomi/features/surroundings/domain/entities/surroundings_entity.dart';
import 'package:geolocator/geolocator.dart';

abstract class SurroundingsRemoteDataSource {
  Future<SurroundingsEntity> fetchSurroundings(
    double lat,
    double lon,
    String cityName, {
    String locationName = '',
  });
  Future<Position?> getCurrentPosition();
}

class SurroundingsRemoteDataSourceImpl implements SurroundingsRemoteDataSource {
  final ApiClient _apiClient;

  SurroundingsRemoteDataSourceImpl(this._apiClient);

  @override
  Future<Position?> getCurrentPosition() async {
    try {
      // 1. Never pop up or ask inside the app for location permission (no requestPermission).
      // 2. Check if location services (GPS) are enabled first to avoid any Google Play Services system prompt.
      final isServiceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!isServiceEnabled) {
        return null;
      }

      // 3. Only read coordinates if permission was already granted manually by user in system settings.
      final perm = await Geolocator.checkPermission();
      if (perm == LocationPermission.always ||
          perm == LocationPermission.whileInUse) {
        try {
          return await Geolocator.getCurrentPosition(
            locationSettings: const LocationSettings(
              accuracy: LocationAccuracy.low,
              timeLimit: Duration(seconds: 4),
            ),
          );
        } catch (_) {
          return await Geolocator.getLastKnownPosition();
        }
      }
    } catch (_) {}
    return null;
  }

  @override
  Future<SurroundingsEntity> fetchSurroundings(
    double lat,
    double lon,
    String cityName, {
    String locationName = '',
  }) async {
    final weatherUri = Uri.parse(
      'https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&current=temperature_2m,relative_humidity_2m,apparent_temperature,uv_index,weather_code,wind_speed_10m',
    );
    final aqiUri = Uri.parse(
      'https://air-quality-api.open-meteo.com/v1/air-quality?latitude=$lat&longitude=$lon&current=us_aqi,pm2_5,pm10',
    );

    try {
      final dynamic weatherRes =
          await _apiClient.get(weatherUri, timeout: const Duration(seconds: 6));
      final dynamic aqiRes =
          await _apiClient.get(aqiUri, timeout: const Duration(seconds: 6));

      final weatherJson = weatherRes as Map<String, dynamic>? ?? {};
      final current = weatherJson['current'] as Map<String, dynamic>? ?? {};

      final temp = (current['temperature_2m'] as num?)?.toDouble() ?? 28.0;
      final feelsLike =
          (current['apparent_temperature'] as num?)?.toDouble() ?? temp;
      final humidity =
          (current['relative_humidity_2m'] as num?)?.toInt() ?? 50;
      final uv = (current['uv_index'] as num?)?.toDouble() ?? 4.0;
      final code = (current['weather_code'] as num?)?.toInt() ?? 0;
      final wind = (current['wind_speed_10m'] as num?)?.toDouble() ?? 12.0;

      final aqiJson = aqiRes as Map<String, dynamic>? ?? {};
      final aqiCurrent = aqiJson['current'] as Map<String, dynamic>? ?? {};
      final aqiVal = (aqiCurrent['us_aqi'] as num?)?.toInt() ?? 65;
      final pm25Val = (aqiCurrent['pm2_5'] as num?)?.toDouble() ?? 18.0;
      final pm10Val = (aqiCurrent['pm10'] as num?)?.toDouble() ?? 35.0;

      return SurroundingsEntity(
        temperatureC: temp,
        feelsLikeC: feelsLike,
        humidityPercent: humidity,
        uvIndex: uv,
        aqi: aqiVal,
        cityName: cityName,
        locationName: locationName.isNotEmpty ? locationName : cityName,
        weatherCode: code,
        fetchedAt: DateTime.now(),
        isFromCache: false,
        windSpeedKmH: wind,
        pm25: pm25Val,
        pm10: pm10Val,
        latitude: lat,
        longitude: lon,
      );
    } catch (_) {
      return SurroundingsEntity.fallback(
        cityName: cityName,
        locationName: locationName,
      );
    }
  }
}
