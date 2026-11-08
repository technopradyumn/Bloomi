import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/health/domain/entities/health_overview_entity.dart';

abstract class HealthRepository {
  Future<HealthConnectAvailabilityStatus> getAvailability();
  Future<bool> hasPermissions();
  Future<bool> requestPermissions();
  Future<bool> installHealthConnect();
  Future<bool> openHealthConnectSettings();
  Future<String> getPreferredHealthSource();
  Future<void> setPreferredHealthSource(String source);
  Future<HealthDataBundleEntity> getLatestBundle({bool forceRefresh = false});

  Stream<List<BodyEntry>> watchBodyEntries({String? type});
  Future<void> logBodyEntry({
    required String type,
    required double value,
    required String unit,
    DateTime? measuredAt,
    String? source,
  });
  Future<void> softDeleteBodyEntry(String id);

  Stream<List<WorkoutLog>> watchWorkoutLogs({DateTime? date});
  Future<List<WorkoutLog>> getWorkoutLogsForDate(DateTime date);
  Future<void> logWorkout({
    required String type,
    required int durationMinutes,
    required double calories,
    DateTime? recordedAt,
    String? source,
  });
  Future<void> softDeleteWorkoutLog(String id);
  Future<void> updateWorkoutLog({
    required String id,
    required String type,
    required int durationMinutes,
    required double calories,
  });

  Stream<HealthOverviewEntity> watchHealthOverview();
  Future<int> getStepTarget();
  Future<void> updateStepTarget(int newStepTarget);
  Stream<int> watchStepTarget();
}

