import 'package:bloomi/features/plan/domain/entities/daily_plan_entity.dart';
import 'package:bloomi/features/plan/domain/repositories/plan_repository.dart';

class GenerateDailyPlanUseCase {
  final PlanRepository repository;
  GenerateDailyPlanUseCase(this.repository);

  Future<DailyPlanBundleEntity> call({DateTime? date}) =>
      repository.generateDailyPlan(date: date);
}

class ToggleChecklistItemUseCase {
  final PlanRepository repository;
  ToggleChecklistItemUseCase(this.repository);

  Future<void> call({required String itemKey, required DateTime date}) =>
      repository.toggleChecklistItem(itemKey: itemKey, date: date);
}

class UpdateTargetsUseCase {
  final PlanRepository repository;
  UpdateTargetsUseCase(this.repository);

  Future<void> call({
    required double calories,
    required double protein,
    required double carbs,
    required double fat,
    required double fibre,
    required double waterMl,
    required int steps,
    required double sleepHours,
    double? targetWeightKg,
    String? gender,
  }) =>
      repository.updateTargets(
        calories: calories,
        protein: protein,
        carbs: carbs,
        fat: fat,
        fibre: fibre,
        waterMl: waterMl,
        steps: steps,
        sleepHours: sleepHours,
        targetWeightKg: targetWeightKg,
        gender: gender,
      );
}

