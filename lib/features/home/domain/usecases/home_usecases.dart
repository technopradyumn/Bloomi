import 'package:bloomi/features/home/domain/entities/home_dashboard_entity.dart';
import 'package:bloomi/features/home/domain/repositories/home_repository.dart';

class WatchHomeDashboardUseCase {
  const WatchHomeDashboardUseCase(this._repository);
  final HomeRepository _repository;

  Stream<HomeDashboardEntity> call({required String userName}) =>
      _repository.watchDashboardData(userName: userName);
}

class LogQuickWaterUseCase {
  const LogQuickWaterUseCase(this._repository);
  final HomeRepository _repository;

  Future<void> call({required int ml}) => _repository.logWater(ml: ml);
}

class LogQuickBodyEntryUseCase {
  const LogQuickBodyEntryUseCase(this._repository);
  final HomeRepository _repository;

  Future<void> call({required String type, required double value, String? notes}) =>
      _repository.logBodyEntry(type: type, value: value, notes: notes);
}

class LogQuickWorkoutUseCase {
  const LogQuickWorkoutUseCase(this._repository);
  final HomeRepository _repository;

  Future<void> call({required String type, required int durationMinutes, required double calories}) =>
      _repository.logWorkout(type: type, durationMinutes: durationMinutes, calories: calories);
}

