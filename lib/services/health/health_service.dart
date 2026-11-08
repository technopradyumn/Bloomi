import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:health/health.dart';
import 'package:permission_handler/permission_handler.dart';

enum HealthConnectAvailability {
  available,
  notInstalled,
  updateRequired,
  unsupportedPlatform,
}

enum HealthDeviceType {
  watch,
  phone,
  unknown,
}

class DeduplicationResult {
  final double totalValue;
  final String sourceLabel;
  final List<HealthDataPoint> selectedPoints;

  const DeduplicationResult({
    required this.totalValue,
    required this.sourceLabel,
    required this.selectedPoints,
  });
}

class HealthDataBundle {
  final int steps;
  final double heartRate;
  final double restingHeartRate;
  final double minHeartRate;
  final double maxHeartRate;
  final double activeCalories;
  final double distanceMeters;
  final double spo2Percentage;
  final double? weightKg;
  final double? systolicBp;
  final double? diastolicBp;
  final Duration sleepDuration;
  final DateTime? sleepBedtime;
  final DateTime? sleepWakeTime;
  final Map<String, Duration> sleepStages; // 'deep', 'rem', 'light', 'awake'
  final List<HealthDataPoint> rawPoints;
  final String primarySource;
  final String stepsSourceLabel;
  final String distanceSourceLabel;
  final String caloriesSourceLabel;
  final String preferredSource;
  final DateTime lastUpdated;

  const HealthDataBundle({
    required this.steps,
    required this.heartRate,
    required this.restingHeartRate,
    required this.minHeartRate,
    required this.maxHeartRate,
    required this.activeCalories,
    required this.distanceMeters,
    required this.spo2Percentage,
    this.weightKg,
    this.systolicBp,
    this.diastolicBp,
    required this.sleepDuration,
    this.sleepBedtime,
    this.sleepWakeTime,
    this.sleepStages = const {},
    this.rawPoints = const [],
    this.primarySource = 'Health Connect',
    this.stepsSourceLabel = 'Health Connect',
    this.distanceSourceLabel = 'Health Connect',
    this.caloriesSourceLabel = 'Health Connect',
    this.preferredSource = 'auto',
    required this.lastUpdated,
  });

  factory HealthDataBundle.empty() {
    return HealthDataBundle(
      steps: 0,
      heartRate: 0,
      restingHeartRate: 0,
      minHeartRate: 0,
      maxHeartRate: 0,
      activeCalories: 0,
      distanceMeters: 0,
      spo2Percentage: 0,
      sleepDuration: Duration.zero,
      lastUpdated: DateTime.now(),
      primarySource: 'No data',
      stepsSourceLabel: 'Health Connect',
      distanceSourceLabel: 'Health Connect',
      caloriesSourceLabel: 'Health Connect',
      preferredSource: 'auto',
    );
  }
}

class HealthService {
  final Health _health;
  bool _isConfigured = false;

  HealthService({Health? health}) : _health = health ?? Health();

  static HealthDataType get _distanceType {
    try {
      if (!kIsWeb && Platform.isAndroid) {
        return HealthDataType.DISTANCE_DELTA;
      }
    } catch (_) {}
    return HealthDataType.DISTANCE_WALKING_RUNNING;
  }

  static List<HealthDataType> get readTypes => [
    HealthDataType.STEPS,
    HealthDataType.HEART_RATE,
    HealthDataType.SLEEP_SESSION,
    HealthDataType.SLEEP_ASLEEP,
    HealthDataType.SLEEP_AWAKE,
    HealthDataType.SLEEP_DEEP,
    HealthDataType.SLEEP_REM,
    HealthDataType.BLOOD_OXYGEN,
    HealthDataType.WEIGHT,
    HealthDataType.BLOOD_PRESSURE_SYSTOLIC,
    HealthDataType.BLOOD_PRESSURE_DIASTOLIC,
    HealthDataType.ACTIVE_ENERGY_BURNED,
    _distanceType,
    HealthDataType.WORKOUT,
  ];

  Future<void> _ensureConfigured() async {
    if (_isConfigured) return;
    try {
      if (!kIsWeb && (Platform.isAndroid || Platform.isIOS)) {
        await _health.configure();
      }
      _isConfigured = true;
    } catch (_) {
      // Configuration fallback for test or unsupported environments
      _isConfigured = true;
    }
  }

  Future<HealthConnectAvailability> checkHealthConnectAvailability() async {
    if (kIsWeb || (!Platform.isAndroid && !Platform.isIOS)) {
      return HealthConnectAvailability.unsupportedPlatform;
    }

    try {
      await _ensureConfigured();
      if (Platform.isAndroid) {
        final status = await _health.getHealthConnectSdkStatus();
        switch (status) {
          case HealthConnectSdkStatus.sdkAvailable:
            return HealthConnectAvailability.available;
          case HealthConnectSdkStatus.sdkUnavailableProviderUpdateRequired:
            return HealthConnectAvailability.updateRequired;
          case HealthConnectSdkStatus.sdkUnavailable:
          default:
            return HealthConnectAvailability.notInstalled;
        }
      }
      return HealthConnectAvailability.available;
    } catch (_) {
      return HealthConnectAvailability.unsupportedPlatform;
    }
  }

  Future<bool> installHealthConnect() async {
    try {
      await _health.installHealthConnect();
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<bool> hasPermissions() async {
    try {
      await _ensureConfigured();
      final checkTypes = [
        HealthDataType.STEPS,
        _distanceType,
        HealthDataType.HEART_RATE,
        HealthDataType.SLEEP_SESSION,
        HealthDataType.ACTIVE_ENERGY_BURNED,
        HealthDataType.WEIGHT,
      ];
      for (final type in checkTypes) {
        try {
          final hasType = await _health.hasPermissions([type]);
          if (hasType == true) return true;
        } catch (_) {}
      }
      return false;
    } catch (_) {
      return false;
    }
  }

  Future<bool> hasStepsPermission() async {
    try {
      await _ensureConfigured();
      final hasSteps = await _health.hasPermissions([HealthDataType.STEPS]);
      return hasSteps == true;
    } catch (_) {
      return false;
    }
  }

  Future<bool> requestPermissions() async {
    try {
      await _ensureConfigured();
      if (!kIsWeb && Platform.isAndroid) {
        try {
          final actStatus = await Permission.activityRecognition.status;
          if (!actStatus.isGranted) {
            await Permission.activityRecognition.request();
          }
        } catch (_) {}
      }
      final permissions = List.filled(readTypes.length, HealthDataAccess.READ);
      bool res = false;
      try {
        res = await _health.requestAuthorization(readTypes, permissions: permissions);
      } catch (e) {
        debugPrint('HealthService: requestAuthorization failed for full list: $e. Retrying core types...');
        try {
          final core = [
            HealthDataType.STEPS,
            _distanceType,
            HealthDataType.HEART_RATE,
            HealthDataType.SLEEP_SESSION,
            HealthDataType.ACTIVE_ENERGY_BURNED,
          ];
          res = await _health.requestAuthorization(
            core,
            permissions: List.filled(core.length, HealthDataAccess.READ),
          );
        } catch (_) {}
      }
      final verified = await hasPermissions();
      return res || verified;
    } catch (_) {
      return false;
    }
  }

  static const MethodChannel _settingsChannel = MethodChannel('com.bloomi.app/settings');
  static const MethodChannel _sensorChannel = MethodChannel('com.bloomi.app/sensors');

  Future<int> getHardwareSensorSteps() async {
    if (kIsWeb || !Platform.isAndroid) return 0;
    try {
      final steps = await _sensorChannel.invokeMethod<int>('getTodaySteps');
      return steps ?? 0;
    } catch (e) {
      debugPrint('HealthService: getHardwareSensorSteps failed: $e');
      return 0;
    }
  }

  Future<bool> isHardwareStepSensorAvailable() async {
    if (kIsWeb || !Platform.isAndroid) return false;
    try {
      final avail = await _sensorChannel.invokeMethod<bool>('isStepSensorAvailable');
      return avail ?? false;
    } catch (_) {
      return false;
    }
  }

  Future<bool> openHealthConnectSettings() async {
    try {
      final res = await _settingsChannel.invokeMethod<bool>('openHealthConnectSettings');
      return res ?? false;
    } catch (e) {
      debugPrint('HealthService: openHealthConnectSettings failed: $e');
      return false;
    }
  }

  static HealthDeviceType classifyDevice(HealthDataPoint point) {
    final name = point.sourceName.toLowerCase();
    final id = point.sourceDeviceId.toLowerCase();
    final origin = point.sourceId.toLowerCase();

    // Watch patterns
    if (name.contains('watch') ||
        name.contains('wear') ||
        name.contains('fitbit') ||
        name.contains('garmin') ||
        name.contains('polar') ||
        name.contains('coros') ||
        name.contains('suunto') ||
        name.contains('amazfit') ||
        name.contains('zepp') ||
        name.contains('whoop') ||
        name.contains('oura') ||
        name.contains('shealth') ||
        name.contains('galaxy') ||
        id.contains('watch') ||
        id.contains('wear') ||
        origin.contains('watch') ||
        origin.contains('wear')) {
      return HealthDeviceType.watch;
    }

    // Phone patterns
    if (name.contains('phone') ||
        name.contains('mobile') ||
        name.contains('fitness') ||
        name.contains('google.android.apps.fitness') ||
        name.contains('healthdata') ||
        name.contains('health connect') ||
        name.contains('bloomi') ||
        name.contains('android') ||
        id.contains('phone') ||
        origin.contains('phone')) {
      return HealthDeviceType.phone;
    }

    return HealthDeviceType.unknown;
  }

  static String formatSourceDisplayName(String rawName, HealthDeviceType deviceType) {
    final lower = rawName.toLowerCase();
    if (lower.contains('shealth') || lower.contains('samsung') || lower.contains('galaxy')) {
      return deviceType == HealthDeviceType.watch ? 'Galaxy Watch' : 'Samsung Health';
    }
    if (lower.contains('pixel') && (lower.contains('watch') || deviceType == HealthDeviceType.watch)) {
      return 'Pixel Watch';
    }
    if (lower.contains('apple') || lower.contains('healthkit')) {
      return deviceType == HealthDeviceType.watch ? 'Apple Watch' : 'Apple Health';
    }
    if (lower.contains('fitbit')) return 'Fitbit';
    if (lower.contains('garmin')) return 'Garmin';
    if (lower.contains('polar')) return 'Polar';
    if (lower.contains('amazfit') || lower.contains('zepp')) return 'Amazfit Watch';
    if (lower.contains('whoop')) return 'WHOOP';
    if (lower.contains('oura')) return 'Oura Ring';
    if (lower.contains('fitness') || lower.contains('google fit')) {
      return deviceType == HealthDeviceType.watch ? 'Wear OS Watch' : 'Google Fit';
    }
    if (deviceType == HealthDeviceType.watch) {
      return 'Smartwatch';
    }
    if (deviceType == HealthDeviceType.phone) {
      return 'Phone';
    }
    if (rawName.isNotEmpty && rawName != 'Health Connect') {
      return rawName;
    }
    return 'Health Connect';
  }

  static DeduplicationResult deduplicateCumulativeRecords(
    List<HealthDataPoint> points, {
    String preferredSource = 'auto',
    String metricName = 'Steps',
  }) {
    if (points.isEmpty) {
      return const DeduplicationResult(
        totalValue: 0,
        sourceLabel: 'Health Connect',
        selectedPoints: [],
      );
    }

    final pref = preferredSource.toLowerCase();
    final watchPoints = <HealthDataPoint>[];
    final phonePoints = <HealthDataPoint>[];
    final otherPoints = <HealthDataPoint>[];

    for (final p in points) {
      final dev = classifyDevice(p);
      if (dev == HealthDeviceType.watch) {
        watchPoints.add(p);
      } else if (dev == HealthDeviceType.phone) {
        phonePoints.add(p);
      } else {
        otherPoints.add(p);
      }
    }

    final selectedPoints = <HealthDataPoint>[];

    if (pref == 'watch') {
      selectedPoints.addAll(watchPoints);
    } else if (pref == 'phone') {
      selectedPoints.addAll(phonePoints);
      if (selectedPoints.isEmpty) {
        selectedPoints.addAll(otherPoints);
      }
    } else {
      // Auto: prefer watch for each window; fall back to phone for non-overlapping windows
      selectedPoints.addAll(watchPoints);

      final nonOverlappingPhone = <HealthDataPoint>[];
      for (final phoneP in phonePoints) {
        bool overlapsWithWatch = false;
        for (final watchP in watchPoints) {
          // Overlap condition: startA < endB && endA > startB
          if (phoneP.dateFrom.isBefore(watchP.dateTo) && phoneP.dateTo.isAfter(watchP.dateFrom)) {
            overlapsWithWatch = true;
            break;
          }
        }
        if (overlapsWithWatch) continue;

        // Ensure multiple phone apps recording the same window do not double-count
        bool overlapsWithSelectedPhone = false;
        for (final sel in nonOverlappingPhone) {
          if (phoneP.dateFrom.isBefore(sel.dateTo) && phoneP.dateTo.isAfter(sel.dateFrom)) {
            overlapsWithSelectedPhone = true;
            break;
          }
        }
        if (!overlapsWithSelectedPhone) {
          nonOverlappingPhone.add(phoneP);
        }
      }
      selectedPoints.addAll(nonOverlappingPhone);

      if (selectedPoints.isEmpty) {
        selectedPoints.addAll(otherPoints);
      }
    }

    double total = 0.0;
    final sourcesUsed = <String>{};
    for (final p in selectedPoints) {
      if (p.value is NumericHealthValue) {
        total += (p.value as NumericHealthValue).numericValue.toDouble();
      }
      final dev = classifyDevice(p);
      sourcesUsed.add(formatSourceDisplayName(p.sourceName, dev));
    }

    String label;
    if (sourcesUsed.isEmpty) {
      label = pref == 'watch' ? 'Smartwatch (No data)' : 'Health Connect';
    } else if (sourcesUsed.length == 1) {
      label = sourcesUsed.first;
    } else {
      label = sourcesUsed.join(' + ');
    }

    return DeduplicationResult(
      totalValue: total,
      sourceLabel: label,
      selectedPoints: selectedPoints,
    );
  }

  /// Fetches latest health bundle for today.
  /// Falls back to friendly sensor/fallback bundle if unavailable, permission denied, or no data yet.
  Future<HealthDataBundle> fetchTodayBundle({
    bool useFallbackOnEmpty = true,
    String preferredSource = 'auto',
  }) async {
    try {
      await _ensureConfigured();
      final now = DateTime.now();
      final startOfDay = DateTime(now.year, now.month, now.day);

      int steps = 0;
      String stepsSourceLabel = (!kIsWeb && Platform.isIOS) ? 'Apple Health' : 'Health Connect';
      double latestHeartRate = 0;
      double minHeartRate = double.infinity;
      double maxHeartRate = 0;
      double heartRateSum = 0;
      int heartRateCount = 0;
      double calories = 0;
      String caloriesSourceLabel = (!kIsWeb && Platform.isIOS) ? 'Apple Health' : 'Health Connect';
      double distance = 0;
      String distanceSourceLabel = (!kIsWeb && Platform.isIOS) ? 'Apple Health' : 'Health Connect';
      double spo2 = 0;
      double? weight;
      double? systolic;
      double? diastolic;
      Duration sleepDuration = Duration.zero;
      DateTime? bedtime;
      DateTime? wakeTime;
      final Map<String, Duration> stages = {};
      final List<HealthDataPoint> collectedPoints = [];
      String primarySource = (!kIsWeb && Platform.isIOS) ? 'Apple HealthKit' : 'Health Connect';

      // 1. STEPS (Honoring user's preferred data source without data clashing or double counting):
      final prefLower = preferredSource.toLowerCase();

      if (prefLower == 'phone' || prefLower == 'sensor') {
        // Preferred source: Device hardware motion sensor
        int hwSteps = 0;
        try {
          hwSteps = await getHardwareSensorSteps();
        } catch (_) {}

        if (hwSteps > 0) {
          steps = hwSteps;
          stepsSourceLabel = 'Device Motion Sensor';
          primarySource = 'Device Motion Sensor';
        } else {
          // Fallback: check phone-only records from Health Connect
          try {
            final stepPoints = await _health.getHealthDataFromTypes(
              types: [HealthDataType.STEPS],
              startTime: startOfDay,
              endTime: now,
            );
            final cleanSteps = _health.removeDuplicates(stepPoints);
            if (cleanSteps.isNotEmpty) {
              final dedup = deduplicateCumulativeRecords(
                cleanSteps,
                preferredSource: 'phone',
                metricName: 'Steps',
              );
              if (dedup.totalValue.toInt() > 0) {
                steps = dedup.totalValue.toInt();
                stepsSourceLabel = dedup.sourceLabel;
              }
            }
          } catch (_) {}
        }
      } else if (prefLower == 'watch') {
        // Preferred source: Smartwatch only via Health Connect (do not clash with phone motion sensor)
        try {
          final stepPoints = await _health.getHealthDataFromTypes(
            types: [HealthDataType.STEPS],
            startTime: startOfDay,
            endTime: now,
          );
          final cleanSteps = _health.removeDuplicates(stepPoints);
          if (cleanSteps.isNotEmpty) {
            collectedPoints.addAll(cleanSteps);
            final dedup = deduplicateCumulativeRecords(
              cleanSteps,
              preferredSource: 'watch',
              metricName: 'Steps',
            );
            if (dedup.totalValue.toInt() > 0) {
              steps = dedup.totalValue.toInt();
            }
            stepsSourceLabel = dedup.sourceLabel;
          }
        } catch (e) {
          debugPrint('HealthService: watch steps query exception: $e');
        }
      } else {
        // Preferred source: Auto (Recommended) - seamlessly prioritize smartwatch with non-overlapping phone fallback
        try {
          final totalSteps = await _health.getTotalStepsInInterval(startOfDay, now);
          if (totalSteps != null && totalSteps > 0) {
            steps = totalSteps;
            stepsSourceLabel = (!kIsWeb && Platform.isIOS) ? 'Apple HealthKit' : 'Health Connect';
          }
        } catch (e) {
          debugPrint('HealthService: getTotalStepsInInterval exception: $e');
        }

        try {
          final stepPoints = await _health.getHealthDataFromTypes(
            types: [HealthDataType.STEPS],
            startTime: startOfDay,
            endTime: now,
          );
          final cleanSteps = _health.removeDuplicates(stepPoints);
          if (cleanSteps.isNotEmpty) {
            collectedPoints.addAll(cleanSteps);
            final dedup = deduplicateCumulativeRecords(
              cleanSteps,
              preferredSource: preferredSource,
              metricName: 'Steps',
            );
            if (steps == 0 && dedup.totalValue.toInt() > 0) {
              steps = dedup.totalValue.toInt();
            }
            if (dedup.sourceLabel.isNotEmpty && dedup.sourceLabel != 'Health Connect') {
              stepsSourceLabel = dedup.sourceLabel;
            }
          }
        } catch (e) {
          debugPrint('HealthService: getHealthDataFromTypes(STEPS) exception: $e');
        }

        // Hardware sensor fallback if Health Connect has no steps yet today
        if (steps == 0) {
          int hwSteps = 0;
          try {
            hwSteps = await getHardwareSensorSteps();
          } catch (_) {}
          if (hwSteps > 0 && hwSteps < 100000) {
            steps = hwSteps;
            stepsSourceLabel = 'Device Motion Sensor';
            primarySource = 'Device Motion Sensor';
          }
        }
      }

      // 2. HEART RATE: Isolated query (single-device metric - read directly)
      try {
        final hrPoints = await _health.getHealthDataFromTypes(
          types: [HealthDataType.HEART_RATE],
          startTime: startOfDay,
          endTime: now,
        );
        final cleanHr = _health.removeDuplicates(hrPoints);
        collectedPoints.addAll(cleanHr);
        for (final p in cleanHr) {
          if (p.value is NumericHealthValue) {
            final val = (p.value as NumericHealthValue).numericValue.toDouble();
            latestHeartRate = val;
            if (val < minHeartRate) minHeartRate = val;
            if (val > maxHeartRate) maxHeartRate = val;
            heartRateSum += val;
            heartRateCount++;
          }
          if (p.sourceName.isNotEmpty && (primarySource == 'Health Connect' || primarySource == 'Apple HealthKit')) {
            primarySource = formatSourceDisplayName(p.sourceName, classifyDevice(p));
          }
        }
      } catch (e) {
        debugPrint('HealthService: getHealthDataFromTypes(HEART_RATE) exception: $e');
      }

      // 3. DISTANCE: Deduplicated cumulative metric
      try {
        final distPoints = await _health.getHealthDataFromTypes(
          types: [_distanceType],
          startTime: startOfDay,
          endTime: now,
        );
        final cleanDist = _health.removeDuplicates(distPoints);
        if (cleanDist.isNotEmpty) {
          collectedPoints.addAll(cleanDist);
          final dedup = deduplicateCumulativeRecords(
            cleanDist,
            preferredSource: preferredSource,
            metricName: 'Distance',
          );
          distance = dedup.totalValue;
          distanceSourceLabel = dedup.sourceLabel;
        }
      } catch (e) {
        debugPrint('HealthService: getHealthDataFromTypes(DISTANCE) exception: $e');
      }
      if (distance == 0 && steps > 0) {
        distance = steps * 0.762; // Standard average stride: ~0.762 meters/step
        distanceSourceLabel = stepsSourceLabel;
      }

      // 4. CALORIES: Deduplicated cumulative metric
      try {
        final calPoints = await _health.getHealthDataFromTypes(
          types: [HealthDataType.ACTIVE_ENERGY_BURNED],
          startTime: startOfDay,
          endTime: now,
        );
        final cleanCal = _health.removeDuplicates(calPoints);
        if (cleanCal.isNotEmpty) {
          collectedPoints.addAll(cleanCal);
          final dedup = deduplicateCumulativeRecords(
            cleanCal,
            preferredSource: preferredSource,
            metricName: 'Calories',
          );
          calories = dedup.totalValue;
          caloriesSourceLabel = dedup.sourceLabel;
        }
      } catch (e) {
        debugPrint('HealthService: getHealthDataFromTypes(CALORIES) exception: $e');
      }
      if (calories == 0 && steps > 0) {
        calories = (steps * 0.04).roundToDouble(); // ~0.04 kcal per step
        caloriesSourceLabel = stepsSourceLabel;
      }

      // 5. SLEEP: Isolated query (single-device metric - read directly)
      try {
        final sleepWindowStart = startOfDay.subtract(const Duration(hours: 14));
        final sleepPoints = await _health.getHealthDataFromTypes(
          types: [
            HealthDataType.SLEEP_SESSION,
            HealthDataType.SLEEP_ASLEEP,
            HealthDataType.SLEEP_AWAKE,
            HealthDataType.SLEEP_DEEP,
            HealthDataType.SLEEP_REM,
          ],
          startTime: sleepWindowStart,
          endTime: now,
        );
        final cleanSleep = _health.removeDuplicates(sleepPoints);
        collectedPoints.addAll(cleanSleep);
        for (final p in cleanSleep) {
          switch (p.type) {
            case HealthDataType.SLEEP_SESSION:
              final dur = p.dateTo.difference(p.dateFrom);
              if (dur > sleepDuration) {
                sleepDuration = dur;
                bedtime = p.dateFrom;
                wakeTime = p.dateTo;
              }
              break;
            case HealthDataType.SLEEP_DEEP:
              stages['deep'] = (stages['deep'] ?? Duration.zero) + p.dateTo.difference(p.dateFrom);
              break;
            case HealthDataType.SLEEP_REM:
              stages['rem'] = (stages['rem'] ?? Duration.zero) + p.dateTo.difference(p.dateFrom);
              break;
            case HealthDataType.SLEEP_ASLEEP:
              stages['light'] = (stages['light'] ?? Duration.zero) + p.dateTo.difference(p.dateFrom);
              break;
            case HealthDataType.SLEEP_AWAKE:
              stages['awake'] = (stages['awake'] ?? Duration.zero) + p.dateTo.difference(p.dateFrom);
              break;
            default:
              break;
          }
        }
        if (sleepDuration == Duration.zero && stages.isNotEmpty) {
          final totalMins = (stages['deep']?.inMinutes ?? 0) +
              (stages['rem']?.inMinutes ?? 0) +
              (stages['light']?.inMinutes ?? 0);
          if (totalMins > 0) {
            sleepDuration = Duration(minutes: totalMins);
          }
        }
      } catch (e) {
        debugPrint('HealthService: sleep query exception: $e');
      }

      // 6. VITALS (SpO2, Weight, BP - single-device metric - read directly)
      try {
        final vitalsPoints = await _health.getHealthDataFromTypes(
          types: [
            HealthDataType.BLOOD_OXYGEN,
            HealthDataType.WEIGHT,
            HealthDataType.BLOOD_PRESSURE_SYSTOLIC,
            HealthDataType.BLOOD_PRESSURE_DIASTOLIC,
          ],
          startTime: startOfDay.subtract(const Duration(days: 30)),
          endTime: now,
        );
        final cleanVitals = _health.removeDuplicates(vitalsPoints);
        collectedPoints.addAll(cleanVitals);
        for (final p in cleanVitals) {
          if (p.value is NumericHealthValue) {
            final val = (p.value as NumericHealthValue).numericValue.toDouble();
            switch (p.type) {
              case HealthDataType.BLOOD_OXYGEN:
                spo2 = val <= 1.0 ? val * 100 : val;
                break;
              case HealthDataType.WEIGHT:
                weight = val;
                break;
              case HealthDataType.BLOOD_PRESSURE_SYSTOLIC:
                systolic = val;
                break;
              case HealthDataType.BLOOD_PRESSURE_DIASTOLIC:
                diastolic = val;
                break;
              default:
                break;
            }
          }
        }
      } catch (e) {
        debugPrint('HealthService: vitals query exception: $e');
      }

      if (stepsSourceLabel != 'Health Connect' && stepsSourceLabel != 'Apple Health') {
        primarySource = stepsSourceLabel;
      }

      return HealthDataBundle(
        steps: steps,
        heartRate: latestHeartRate,
        restingHeartRate: heartRateCount > 0 ? (heartRateSum / heartRateCount) : 0,
        minHeartRate: minHeartRate == double.infinity ? 0 : minHeartRate,
        maxHeartRate: maxHeartRate,
        activeCalories: calories,
        distanceMeters: distance,
        spo2Percentage: spo2,
        weightKg: weight,
        systolicBp: systolic,
        diastolicBp: diastolic,
        sleepDuration: sleepDuration,
        sleepBedtime: bedtime,
        sleepWakeTime: wakeTime,
        sleepStages: stages,
        rawPoints: collectedPoints,
        primarySource: primarySource,
        stepsSourceLabel: stepsSourceLabel,
        distanceSourceLabel: distanceSourceLabel,
        caloriesSourceLabel: caloriesSourceLabel,
        preferredSource: preferredSource,
        lastUpdated: now,
      );
    } catch (e) {
      debugPrint('HealthService: fetchTodayBundle uncaught exception: $e');
      return HealthDataBundle.empty();
    }
  }

  /// Fetches historical points for a given type over a date range
  Future<List<HealthDataPoint>> fetchHistory(HealthDataType type, DateTime start, DateTime end) async {
    try {
      await _ensureConfigured();
      final points = await _health.getHealthDataFromTypes(
        types: [type],
        startTime: start,
        endTime: end,
      );
      final clean = _health.removeDuplicates(points);
      if (type == HealthDataType.STEPS && clean.isEmpty) {
        try {
          final total = await _health.getTotalStepsInInterval(start, end);
          if (total != null && total > 0) {
            return [
              HealthDataPoint(
                uuid: 'total_steps_${start.millisecondsSinceEpoch}',
                value: NumericHealthValue(numericValue: total),
                type: HealthDataType.STEPS,
                unit: HealthDataUnit.COUNT,
                dateFrom: start,
                dateTo: end,
                sourcePlatform: _health.platformType,
                sourceDeviceId: _health.deviceId,
                sourceId: 'bloomi_steps_aggregate',
                sourceName: (!kIsWeb && Platform.isIOS) ? 'Apple HealthKit' : 'Health Connect',
              ),
            ];
          }
        } catch (_) {}
      }
      return clean;
    } catch (_) {
      return [];
    }
  }
}

