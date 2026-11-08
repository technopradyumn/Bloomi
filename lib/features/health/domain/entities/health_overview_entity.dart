import 'package:bloomi/core/database/app_database.dart';
import 'package:equatable/equatable.dart';

enum HealthConnectAvailabilityStatus {
  available,
  notInstalled,
  updateRequired,
  unsupportedPlatform,
}

enum PreferredHealthSource {
  auto,
  watch,
  phone;

  static PreferredHealthSource fromString(String? val) {
    switch (val?.toLowerCase()) {
      case 'watch':
        return PreferredHealthSource.watch;
      case 'phone':
        return PreferredHealthSource.phone;
      case 'auto':
      default:
        return PreferredHealthSource.auto;
    }
  }

  String get displayName {
    switch (this) {
      case PreferredHealthSource.auto:
        return 'Auto';
      case PreferredHealthSource.watch:
        return 'Watch';
      case PreferredHealthSource.phone:
        return 'Phone';
    }
  }
}

class HealthDataBundleEntity extends Equatable {
  const HealthDataBundleEntity({
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
    this.primarySource = 'Health Connect',
    this.stepsSourceLabel = 'Health Connect',
    this.distanceSourceLabel = 'Health Connect',
    this.caloriesSourceLabel = 'Health Connect',
    this.preferredSource = 'auto',
    required this.lastUpdated,
  });

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
  final Map<String, Duration> sleepStages;
  final String primarySource;
  final String stepsSourceLabel;
  final String distanceSourceLabel;
  final String caloriesSourceLabel;
  final String preferredSource;
  final DateTime lastUpdated;

  String get stepsDisplaySource => 'Steps from $stepsSourceLabel';

  factory HealthDataBundleEntity.empty() {
    return HealthDataBundleEntity(
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

  factory HealthDataBundleEntity.fallbackDemo() {
    final now = DateTime.now();
    return HealthDataBundleEntity(
      steps: 6420,
      heartRate: 72,
      restingHeartRate: 64,
      minHeartRate: 58,
      maxHeartRate: 128,
      activeCalories: 345,
      distanceMeters: 4850,
      spo2Percentage: 98,
      weightKg: 68.5,
      systolicBp: 118,
      diastolicBp: 78,
      sleepDuration: const Duration(hours: 7, minutes: 24),
      sleepBedtime: DateTime(now.year, now.month, now.day - 1, 23, 15),
      sleepWakeTime: DateTime(now.year, now.month, now.day, 6, 39),
      sleepStages: const {
        'deep': Duration(hours: 1, minutes: 42),
        'rem': Duration(hours: 1, minutes: 36),
        'light': Duration(hours: 3, minutes: 38),
        'awake': Duration(minutes: 28),
      },
      primarySource: 'Phone Step Counter & Sensor',
      stepsSourceLabel: 'Phone',
      distanceSourceLabel: 'Phone',
      caloriesSourceLabel: 'Phone',
      preferredSource: 'auto',
      lastUpdated: now.subtract(const Duration(minutes: 5)),
    );
  }

  @override
  List<Object?> get props => [
        steps,
        heartRate,
        restingHeartRate,
        minHeartRate,
        maxHeartRate,
        activeCalories,
        distanceMeters,
        spo2Percentage,
        weightKg,
        systolicBp,
        diastolicBp,
        sleepDuration,
        sleepBedtime,
        sleepWakeTime,
        sleepStages,
        primarySource,
        stepsSourceLabel,
        distanceSourceLabel,
        caloriesSourceLabel,
        preferredSource,
        lastUpdated,
      ];
}

class HealthOverviewEntity extends Equatable {
  const HealthOverviewEntity({
    required this.bundle,
    required this.recentBodyEntries,
    required this.todayWorkouts,
    required this.latestWeightKg,
    this.latestSystolicBp,
    this.latestDiastolicBp,
    this.stepGoal = 10000,
  });

  final HealthDataBundleEntity bundle;
  final List<BodyEntry> recentBodyEntries;
  final List<WorkoutLog> todayWorkouts;
  final double latestWeightKg;
  final double? latestSystolicBp;
  final double? latestDiastolicBp;
  final int stepGoal;

  @override
  List<Object?> get props => [
        bundle,
        recentBodyEntries,
        todayWorkouts,
        latestWeightKg,
        latestSystolicBp,
        latestDiastolicBp,
        stepGoal,
      ];
}

