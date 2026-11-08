import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/plan/domain/entities/daily_plan_entity.dart';

abstract class PlanRepository {
  void cycleSwap(String mealType);
  Stream<List<PlanChecklist>> watchChecklistForDate(DateTime date);
  Future<void> toggleChecklistItem({
    required String itemKey,
    required DateTime date,
  });
  Future<void> updateTargets({
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
  });
  Future<void> updateStepTarget(int steps);
  Future<Target> getTargets();
  Future<DailyPlanBundleEntity> generateDailyPlan({DateTime? date});
  Stream<DailyPlanBundleEntity> watchDailyPlan({DateTime? date});
}

