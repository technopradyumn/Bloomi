import 'dart:async';
import 'dart:io';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/theme/app_theme_mode.dart';
import 'package:bloomi/core/theme/theme_cubit.dart';
import 'package:bloomi/core/utils/health_calculators.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:bloomi/features/home/domain/entities/home_dashboard_entity.dart';
import 'package:bloomi/features/home/domain/repositories/home_repository.dart';
import 'package:bloomi/features/insights/domain/repositories/insights_repository.dart';
import 'package:bloomi/features/plan/domain/repositories/plan_repository.dart';
import 'package:bloomi/features/surroundings/domain/repositories/surroundings_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WidgetSyncData {
  final int consumedKcal;
  final int targetKcal;
  final int remainingKcal;
  final int waterMl;
  final int targetWaterMl;
  final int steps;
  final int targetSteps;
  final double distanceKm;
  final double distanceMeters;
  final int heartRate;
  final int streakDays;
  final double carbs;
  final double protein;
  final double fat;
  final double fibre;
  final int activeCalories;
  final String location;
  final String weatherTemp;
  final String weatherCondition;
  final int aqi;
  final int uvIndex;

  const WidgetSyncData({
    required this.consumedKcal,
    required this.targetKcal,
    required this.remainingKcal,
    required this.waterMl,
    required this.targetWaterMl,
    required this.steps,
    required this.targetSteps,
    required this.distanceKm,
    this.distanceMeters = 0.0,
    required this.heartRate,
    required this.streakDays,
    this.carbs = 0,
    this.protein = 0,
    this.fat = 0,
    this.fibre = 0,
    this.activeCalories = 0,
    this.location = 'Local Area',
    this.weatherTemp = '28°C',
    this.weatherCondition = 'Pleasant',
    this.aqi = 42,
    this.uvIndex = 3,
  });
}

class WidgetSyncService {
  static const MethodChannel _channel = MethodChannel('com.bloomi.app/widgets');
  StreamSubscription<HomeDashboardEntity>? _dashboardSub;

  /// Starts listening to the local database to update native widgets in real time
  void startLiveListening() {
    _dashboardSub?.cancel();
    try {
      _dashboardSub = sl<HomeRepository>()
          .watchDashboardData(userName: 'Friend')
          .listen((_) {
        syncToNativeWidgets();
      });
    } catch (_) {}
  }

  void dispose() {
    _dashboardSub?.cancel();
  }

  /// Fetches real user metrics from local repositories
  Future<WidgetSyncData> fetchRealWidgetData() async {
    // 1. Calories & Targets from HomeRepository
    int consumedKcal = 0;
    int targetKcal = 2000;
    int waterMl = 0;
    int targetWaterMl = 2500;
    int streakDays = 0;
    double carbs = 0;
    double protein = 0;
    double fat = 0;
    double fibre = 0;

    try {
      final homeData = await sl<HomeRepository>().getDashboardData(userName: 'Friend');
      consumedKcal = homeData.consumedCalories.toInt();
      targetKcal = homeData.targetCalories.toInt();
      waterMl = homeData.consumedWaterMl;
      targetWaterMl = homeData.targetWaterMl.toInt();
      streakDays = homeData.streakDays;
      carbs = homeData.carbs.currentGrams;
      protein = homeData.protein.currentGrams;
      fat = homeData.fat.currentGrams;
      fibre = homeData.fibre.currentGrams;
    } catch (_) {
      try {
        final targets = await sl<PlanRepository>().getTargets();
        targetKcal = targets.calories.toInt();
        targetWaterMl = targets.waterMl.toInt();
      } catch (_) {}
    }
    final remainingKcal = (targetKcal - consumedKcal).clamp(0, 9999);

    // 2. Steps & Vitals
    int steps = 0;
    int targetSteps = 10000;
    double distanceMeters = 0.0;
    double distanceKm = 0.0;
    int heartRate = 72;
    int activeCalories = 0;
    try {
      targetSteps = await sl<HealthRepository>().getStepTarget();
      final bundle = await sl<HealthRepository>().getLatestBundle();
      steps = bundle.steps;
      distanceMeters = bundle.distanceMeters > 0
          ? bundle.distanceMeters
          : (bundle.steps * 0.762);
      distanceKm = distanceMeters / 1000.0;
      if (bundle.heartRate > 0) {
        heartRate = bundle.heartRate.toInt();
      }
      activeCalories = bundle.activeCalories > 0
          ? bundle.activeCalories.round()
          : (bundle.steps * 0.04).round().clamp(0, 5000);
    } catch (_) {}

    // 3. Streak fallback if not yet loaded from HomeRepository
    if (streakDays == 0) {
      try {
        streakDays = await sl<InsightsRepository>().getCurrentStreak();
      } catch (_) {}
    }

    // 4. Surroundings
    String location = 'Local Area';
    String weatherTemp = '28°C';
    String weatherCondition = 'Pleasant';
    int aqi = 42;
    int uvIndex = 3;
    try {
      final surroundings = await sl<SurroundingsRepository>().getSurroundingsData();
      if (surroundings != null) {
        location = surroundings.locationDisplayName;
        weatherTemp = '${surroundings.temperatureC.toInt()}°C';
        weatherCondition = surroundings.aqiLabel.isNotEmpty ? surroundings.aqiLabel : 'Pleasant';
        aqi = surroundings.aqi;
        uvIndex = surroundings.uvIndex.toInt();
      }
    } catch (_) {}

    return WidgetSyncData(
      consumedKcal: consumedKcal,
      targetKcal: targetKcal,
      remainingKcal: remainingKcal,
      waterMl: waterMl,
      targetWaterMl: targetWaterMl,
      steps: steps,
      targetSteps: targetSteps,
      distanceKm: distanceKm,
      distanceMeters: distanceMeters,
      heartRate: heartRate,
      streakDays: streakDays,
      carbs: carbs,
      protein: protein,
      fat: fat,
      fibre: fibre,
      activeCalories: activeCalories,
      location: location,
      weatherTemp: weatherTemp,
      weatherCondition: weatherCondition,
      aqi: aqi,
      uvIndex: uvIndex,
    );
  }

  /// Pushes latest real data to native Android AppWidgets
  Future<bool> syncToNativeWidgets() async {
    if (kIsWeb || !Platform.isAndroid) return false;
    try {
      final data = await fetchRealWidgetData();
      final caloriesStr = '${data.remainingKcal} kcal';
      final caloriesSub = data.remainingKcal > 0 ? 'remaining today' : 'goal reached! ✨';
      final waterStr = '💧 ${data.waterMl} ml';
      final distanceFormatted = HealthCalculators.formatDistance(data.distanceMeters);
      final stepsKmStr = '👟 $distanceFormatted';
      final streakStr = data.streakDays > 0 ? '🔥 ${data.streakDays} days' : '🌱 Day 1';
      final stepsRawStr = '${data.steps} steps';
      final distanceRawStr = '$distanceFormatted walked';
      final carbsStr = '🍞 ${data.carbs.toInt()}g';
      final proteinStr = '🍗 ${data.protein.toInt()}g';
      final fatStr = '🥑 ${data.fat.toInt()}g';
      final bpmStr = '💓 ${data.heartRate} bpm';
      final waterTargetStr = '/ ${data.targetWaterMl} ml';
      final waterRemainingMl = (data.targetWaterMl - data.waterMl).clamp(0, 99999);
      final waterRemainingStr = waterRemainingMl > 0 ? '$waterRemainingMl ml remaining' : 'target reached! ✨';
      final activeBurnedStr = '🔥 ${data.consumedKcal} kcal consumed';

      // Computed metrics matching preview UI
      final stepsProgress = data.targetSteps > 0
          ? (data.steps / data.targetSteps).clamp(0.0, 1.0)
          : 0.0;
      final stepsPercent = (stepsProgress * 100).toInt();

      final waterProgress = data.targetWaterMl > 0
          ? (data.waterMl / data.targetWaterMl).clamp(0.0, 1.0)
          : 0.0;
      final waterPercent = (waterProgress * 100).toInt();
      final waterGlasses = (data.waterMl / 250).floor();
      final waterTargetGlasses = (data.targetWaterMl / 250).ceil();

      final caloriesProgress = data.targetKcal > 0
          ? (data.consumedKcal / data.targetKcal).clamp(0.0, 1.0)
          : 0.0;
      final caloriesPercent = (caloriesProgress * 100).toInt();

      String themeModeStr = 'system';
      String appBackgroundStr = 'pure';
      bool isDarkMode = false;
      try {
        if (sl.isRegistered<ThemeCubit>()) {
          final themeState = sl<ThemeCubit>().state;
          themeModeStr = themeState.themeMode.name;
          appBackgroundStr = themeState.backgroundOption.name;
          isDarkMode = themeState.themeMode == AppThemeMode.dark ||
              (themeState.themeMode == AppThemeMode.system &&
                  WidgetsBinding.instance.platformDispatcher.platformBrightness == Brightness.dark);
        }
      } catch (_) {}

      final res = await _channel.invokeMethod<bool>('updateWidgetData', {
        // Theme & mode keys for real-time widget adaptation
        'themeMode': themeModeStr,
        'appBackground': appBackgroundStr,
        'isDarkMode': isDarkMode,

        // Base keys
        'calories': caloriesStr,
        'caloriesSub': caloriesSub,
        'water': waterStr,
        'stepsKm': stepsKmStr,
        'streak': streakStr,
        'stepsRaw': stepsRawStr,
        'distanceRaw': distanceRawStr,
        'carbs': carbsStr,
        'protein': proteinStr,
        'fat': fatStr,
        'bpm': bpmStr,
        'waterTarget': waterTargetStr,
        'waterRemaining': waterRemainingStr,
        'activeBurned': activeBurnedStr,

        // Step Counter Widget keys (exact UI matching)
        'steps_count': '${data.steps}',
        'steps_target': '/ ${data.targetSteps} target',
        'steps_percent': '$stepsPercent%',
        'steps_progress': stepsPercent,
        'steps_distance': '📏 $distanceFormatted',
        'steps_calories': '🔥 ${data.activeCalories} kcal',

        // Water Tracker Widget keys (exact UI matching)
        'water_amount': '${data.waterMl}',
        'water_target': 'ml / ${data.targetWaterMl} ml',
        'water_percent': '$waterPercent%',
        'water_progress': waterPercent,
        'water_glasses': '🥛 $waterGlasses / $waterTargetGlasses glasses',
        'water_remaining': waterRemainingMl == 0 ? 'Goal met! ✨' : '$waterRemainingMl ml left',

        // All-in-One Daily Hub Widget keys (exact UI matching)
        'weather_temp_cond': '${data.weatherTemp} · ${data.weatherCondition}',
        'hub_location': data.location,
        'aqi_badge': 'AQI ${data.aqi}',
        'uv_badge': 'UV ${data.uvIndex}',
        'hub_steps_val': '${data.steps}',
        'hub_steps_goal': '/ ${data.targetSteps} goal',
        'hub_steps_progress': stepsPercent,
        'hub_water_val': '${data.waterMl} ml',
        'hub_water_goal': '/ ${data.targetWaterMl} ml goal',
        'hub_water_progress': waterPercent,
        'hub_calories_val': '${data.consumedKcal} / ${data.targetKcal} kcal',
        'hub_calories_progress': caloriesPercent,
        'hub_protein': '${data.protein.toInt()}g',
        'hub_carbs': '${data.carbs.toInt()}g',
        'hub_fat': '${data.fat.toInt()}g',
        'hub_fibre': '${data.fibre.toInt()}g',
      });
      return res ?? false;
    } catch (e) {
      debugPrint('WidgetSyncService: syncToNativeWidgets error: $e');
      return false;
    }
  }

  /// Checks if Android system launcher supports direct widget pinning
  Future<bool> isPinSupported() async {
    if (kIsWeb || !Platform.isAndroid) return false;
    try {
      final res = await _channel.invokeMethod<bool>('isPinSupported');
      return res ?? false;
    } catch (_) {
      return false;
    }
  }

  /// Requests the Android OS to pin the Bloomi widget onto the launcher
  Future<bool> requestPinWidget([String widgetType = 'overview']) async {
    if (kIsWeb || !Platform.isAndroid) return false;
    try {
      await syncToNativeWidgets();
      final res = await _channel.invokeMethod<bool>('pinWidget', {
        'widgetType': widgetType,
      });
      return res ?? false;
    } catch (e) {
      debugPrint('WidgetSyncService: requestPinWidget error: $e');
      return false;
    }
  }
}
