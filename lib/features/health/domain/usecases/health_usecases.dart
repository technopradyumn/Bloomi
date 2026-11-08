import 'package:bloomi/features/health/domain/entities/health_overview_entity.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';

class GetHealthOverviewUseCase {
  final HealthRepository repository;
  GetHealthOverviewUseCase(this.repository);

  Stream<HealthOverviewEntity> call() => repository.watchHealthOverview();
}

class LogBodyEntryUseCase {
  final HealthRepository repository;
  LogBodyEntryUseCase(this.repository);

  Future<void> call({
    required String type,
    required double value,
    required String unit,
    DateTime? measuredAt,
    String? source,
  }) {
    return repository.logBodyEntry(
      type: type,
      value: value,
      unit: unit,
      measuredAt: measuredAt,
      source: source,
    );
  }
}

class LogWorkoutUseCase {
  final HealthRepository repository;
  LogWorkoutUseCase(this.repository);

  Future<void> call({
    required String type,
    required int durationMinutes,
    required double calories,
    DateTime? recordedAt,
    String? source,
  }) {
    return repository.logWorkout(
      type: type,
      durationMinutes: durationMinutes,
      calories: calories,
      recordedAt: recordedAt,
      source: source,
    );
  }
}

