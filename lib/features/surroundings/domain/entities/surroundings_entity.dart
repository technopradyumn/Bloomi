import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class CityLocationEntity extends Equatable {
  final String name;
  final double latitude;
  final double longitude;

  const CityLocationEntity({
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  @override
  List<Object?> get props => [name, latitude, longitude];
}

const kDefaultCities = [
  CityLocationEntity(name: 'New Delhi', latitude: 28.6139, longitude: 77.2090),
  CityLocationEntity(name: 'Mumbai', latitude: 19.0760, longitude: 72.8777),
  CityLocationEntity(name: 'Bengaluru', latitude: 12.9716, longitude: 77.5946),
  CityLocationEntity(name: 'London', latitude: 51.5074, longitude: -0.1278),
  CityLocationEntity(name: 'New York', latitude: 40.7128, longitude: -74.0060),
  CityLocationEntity(name: 'Tokyo', latitude: 35.6762, longitude: 139.6503),
  CityLocationEntity(name: 'San Francisco', latitude: 37.7749, longitude: -122.4194),
  CityLocationEntity(name: 'Sydney', latitude: -33.8688, longitude: 151.2093),
];

class SurroundingsEntity extends Equatable {
  final double temperatureC;
  final double feelsLikeC;
  final int humidityPercent;
  final double uvIndex;
  final int aqi;
  final String cityName;
  final int weatherCode;
  final DateTime fetchedAt;
  final bool isFromCache;
  final double windSpeedKmH;
  final double pm25;
  final double pm10;
  final String locationName;
  final double? latitude;
  final double? longitude;

  const SurroundingsEntity({
    required this.temperatureC,
    required this.feelsLikeC,
    required this.humidityPercent,
    required this.uvIndex,
    required this.aqi,
    required this.cityName,
    this.locationName = '',
    this.weatherCode = 0,
    required this.fetchedAt,
    this.isFromCache = false,
    this.windSpeedKmH = 12.0,
    this.pm25 = 18.0,
    this.pm10 = 35.0,
    this.latitude,
    this.longitude,
  });

  String get locationDisplayName {
    if (locationName.isNotEmpty && locationName != 'Current Location') {
      return locationName;
    }
    if (cityName.isNotEmpty && cityName != 'Current Location') {
      return cityName;
    }
    return 'Your Area';
  }

  String get coordinatesDisplay => locationDisplayName;

  String get aqiLabel {
    if (aqi <= 50) return 'Good';
    if (aqi <= 100) return 'Moderate';
    if (aqi <= 150) return 'Sensitive';
    if (aqi <= 200) return 'Unhealthy';
    if (aqi <= 300) return 'Very Unhealthy';
    return 'Hazardous';
  }

  Color get aqiColor {
    if (aqi <= 50) return const Color(0xFF22C55E); // Green
    if (aqi <= 100) return const Color(0xFFEAB308); // Yellow
    if (aqi <= 150) return const Color(0xFFF97316); // Orange
    if (aqi <= 200) return const Color(0xFFEF4444); // Red
    if (aqi <= 300) return const Color(0xFFA855F7); // Purple
    return const Color(0xFF881337); // Maroon
  }

  String get uvLabel {
    if (uvIndex < 3.0) return 'Low';
    if (uvIndex < 6.0) return 'Moderate';
    if (uvIndex < 8.0) return 'High';
    if (uvIndex < 11.0) return 'Very High';
    return 'Extreme';
  }

  int get extraWaterMl {
    if (temperatureC >= 38.0) return 500;
    if (temperatureC >= 32.0) return 250;
    return 0;
  }

  String? get hydrationTip {
    if (temperatureC >= 38.0) {
      return 'Extreme heat today! Drink plenty of water (+500 ml recommended). Stay cool in shaded areas.';
    } else if (temperatureC >= 32.0) {
      return 'It is quite warm outside! Keep your water bottle handy (+250 ml recommended).';
    }
    return null;
  }

  String? get uvTip {
    if (uvIndex >= 8.0) {
      return 'Very high UV index today. Sunscreen, sunglasses, and a hat are strongly recommended outdoors.';
    } else if (uvIndex >= 6.0) {
      return 'High UV levels. Consider sun protection if you are stepping out between 11 AM and 4 PM.';
    }
    return null;
  }

  String? get aqiTip {
    if (aqi >= 150) {
      return 'Air quality is unhealthful today. Consider moving workouts indoors and keeping windows closed.';
    } else if (aqi >= 101) {
      return 'Air quality is sensitive today. Gentle or indoor activities are recommended.';
    }
    return null;
  }

  List<String> get kindnessTips {
    final tips = <String>[];
    if (hydrationTip != null) tips.add(hydrationTip!);
    if (uvTip != null) tips.add(uvTip!);
    if (aqiTip != null) tips.add(aqiTip!);

    if (tips.isEmpty) {
      tips.add('Pleasant weather conditions today! A lovely day for a refreshing outdoor walk.');
    }
    return tips;
  }

  String get weatherDescription {
    switch (weatherCode) {
      case 0:
        return 'Clear Sky';
      case 1:
      case 2:
      case 3:
        return 'Partly Cloudy';
      case 45:
      case 48:
        return 'Foggy';
      case 51:
      case 53:
      case 55:
        return 'Drizzle';
      case 61:
      case 63:
      case 65:
        return 'Rain';
      case 71:
      case 73:
      case 75:
        return 'Snow';
      case 80:
      case 81:
      case 82:
        return 'Showers';
      case 95:
      case 96:
      case 99:
        return 'Thunderstorm';
      default:
        return 'Sunny';
    }
  }

  IconData get weatherIcon {
    switch (weatherCode) {
      case 0:
        return Icons.wb_sunny_rounded;
      case 1:
      case 2:
      case 3:
        return Icons.wb_cloudy_rounded;
      case 45:
      case 48:
        return Icons.cloud_outlined;
      case 51:
      case 53:
      case 55:
      case 61:
      case 63:
      case 65:
      case 80:
      case 81:
      case 82:
        return Icons.water_drop_rounded;
      case 71:
      case 73:
      case 75:
        return Icons.ac_unit_rounded;
      case 95:
      case 96:
      case 99:
        return Icons.flash_on_rounded;
      default:
        return Icons.wb_sunny_rounded;
    }
  }

  static SurroundingsEntity fallback({
    String cityName = 'Your Area',
    String locationName = '',
  }) {
    return SurroundingsEntity(
      temperatureC: 28.5,
      feelsLikeC: 30.0,
      humidityPercent: 55,
      uvIndex: 5.2,
      aqi: 68,
      cityName: cityName,
      locationName: locationName.isNotEmpty ? locationName : cityName,
      weatherCode: 0,
      fetchedAt: DateTime.now(),
      isFromCache: true,
      windSpeedKmH: 14.0,
      pm25: 22.0,
      pm10: 45.0,
      latitude: 28.61,
      longitude: 77.20,
    );
  }

  @override
  List<Object?> get props => [
        temperatureC,
        feelsLikeC,
        humidityPercent,
        uvIndex,
        aqi,
        cityName,
        locationName,
        weatherCode,
        fetchedAt,
        isFromCache,
        windSpeedKmH,
        pm25,
        pm10,
        latitude,
        longitude,
      ];
}

typedef SurroundingsData = SurroundingsEntity;
typedef CityLocation = CityLocationEntity;
