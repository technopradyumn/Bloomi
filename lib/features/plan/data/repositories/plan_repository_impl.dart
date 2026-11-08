import 'dart:async';

import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/food/data/models/nutrient_snapshot_model.dart';
import 'package:bloomi/features/food/domain/entities/nutrient_snapshot_entity.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:bloomi/features/plan/data/local/plan_local_data_source.dart';
import 'package:bloomi/features/plan/domain/entities/daily_plan_entity.dart';
import 'package:bloomi/features/plan/domain/entities/meal_suggestion_entity.dart';
import 'package:bloomi/features/plan/domain/repositories/plan_repository.dart';

class PlanRepositoryImpl implements PlanRepository {
  final PlanLocalDataSource _localDataSource;

  // Swapped indices for each meal type
  final Map<String, int> _swapOffsets = {
    'breakfast': 0,
    'lunch': 0,
    'snacks': 0,
    'dinner': 0,
  };

  PlanRepositoryImpl(this._localDataSource);

  @override
  void cycleSwap(String mealType) {
    _swapOffsets[mealType] = (_swapOffsets[mealType] ?? 0) + 1;
  }

  @override
  Stream<List<PlanChecklist>> watchChecklistForDate(DateTime date) =>
      _localDataSource.watchChecklistForDate(date);

  @override
  Future<void> toggleChecklistItem({
    required String itemKey,
    required DateTime date,
  }) =>
      _localDataSource.toggleChecklistItem(itemKey: itemKey, date: date);

  @override
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
  }) async {
    final isMale = (gender?.toLowerCase() ?? '') == 'male';
    final calorieFloor = isMale ? 1500.0 : 1200.0;
    final safeCalories = calories < calorieFloor ? calorieFloor : calories;

    await _localDataSource.updateTargets(
      calories: safeCalories,
      protein: protein,
      carbs: carbs,
      fat: fat,
      fibre: fibre,
      waterMl: waterMl,
      steps: steps,
      sleepHours: sleepHours,
      targetWeightKg: targetWeightKg,
    );
  }

  @override
  Future<void> updateStepTarget(int steps) async {
    await _localDataSource.updateStepTarget(steps);
  }

  @override
  Future<Target> getTargets() async {
    final profile = await _localDataSource.getUserProfile();
    var targets = await _localDataSource.getLatestTargets();

    if (targets == null) {
      final isMale = (profile?.gender?.toLowerCase() ?? '') == 'male';
      targets = Target(
        id: 'default',
        userId: profile?.userId ?? 'default_user',
        isDirty: false,
        calories: isMale ? 2000.0 : 1700.0,
        protein: 70.0,
        carbs: 210.0,
        fat: 48.0,
        fibre: 24.0,
        waterMl: 2200.0,
        steps: 10000,
        sleepHours: 8.0,
        targetWeightKg: 65.0,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        deleted: false,
      );
    }
    return targets;
  }

  @override
  Future<DailyPlanBundleEntity> generateDailyPlan({DateTime? date}) async {
    final targetDate = date ?? DateTime.now();
    final profile = await _localDataSource.getUserProfile();
    final targets = await getTargets();
    final loggedMeals = await _localDataSource.getMealLogsForDate(targetDate);

    double consumedKcal = 0;
    final loggedMealTypes = <String>{};
    for (final m in loggedMeals) {
      final snap = NutrientSnapshotModel.fromJson(m.computedNutrientsSnapshot);
      consumedKcal += snap.calories;
      loggedMealTypes.add(m.mealType.toLowerCase());
    }

    final remainingKcal = (targets.calories - consumedKcal).clamp(0.0, targets.calories);

    final waterLogs = await _localDataSource.getWaterLogsForDate(targetDate);
    final waterLogged = waterLogs.fold<int>(0, (acc, w) => acc + w.ml);

    final workouts = await _localDataSource.getWorkoutLogsForDate(targetDate);
    final workoutMins = workouts.fold<int>(0, (acc, w) => acc + w.durationMinutes);

    final allFoods = await _localDataSource.getAllFoodItems();
    final userDiet = (profile?.dietType ?? 'vegetarian').toLowerCase();
    final userAllergies = (profile?.allergies ?? '')
        .toLowerCase()
        .split(',')
        .map((s) => s.trim())
        .where((s) => s.isNotEmpty)
        .toList();

    final allowedFoods = allFoods.where((food) {
      final foodDiet = (food.dietTags ?? 'vegetarian').toLowerCase();
      final foodName = food.name.toLowerCase();

      for (final allergen in userAllergies) {
        if (allergen.contains('dairy') || allergen.contains('milk')) {
          if (foodName.contains('paneer') ||
              foodName.contains('milk') ||
              foodName.contains('curd') ||
              foodName.contains('ghee') ||
              foodName.contains('cheese')) {
            return false;
          }
        }
        if (allergen.contains('nut') || allergen.contains('peanut')) {
          if (foodName.contains('nut') || foodName.contains('almond') || foodName.contains('peanut')) {
            return false;
          }
        }
        if (allergen.contains('gluten') || allergen.contains('wheat')) {
          if (foodName.contains('wheat') || foodName.contains('roti') || foodName.contains('chapati')) {
            return false;
          }
        }
      }

      if (userDiet.contains('vegan')) {
        return foodDiet.contains('vegan');
      } else if (userDiet.contains('veg')) {
        return foodDiet.contains('vegetarian') || foodDiet.contains('vegan');
      } else if (userDiet.contains('egg')) {
        return foodDiet.contains('vegetarian') ||
            foodDiet.contains('vegan') ||
            foodDiet.contains('egg') ||
            foodName.contains('egg');
      }
      return true;
    }).toList();

    final slots = ['breakfast', 'lunch', 'snacks', 'dinner'];
    final suggestions = <MealSuggestionEntity>[];

    for (final slot in slots) {
      final isSlotLogged = loggedMealTypes.contains(slot);

      double slotCalorieFraction = 0.25;
      if (slot == 'lunch') slotCalorieFraction = 0.35;
      if (slot == 'snacks') slotCalorieFraction = 0.15;
      final targetSlotKcal = targets.calories * slotCalorieFraction;

      var candidates = allowedFoods.where((f) {
        final tags = (f.mealTypeTags ?? '').toLowerCase();
        return tags.contains(slot) || tags.isEmpty;
      }).toList();

      if (candidates.isEmpty) {
        candidates = allowedFoods;
      }

      if (candidates.isEmpty) {
        suggestions.add(
          MealSuggestionEntity(
            foodId: 'fallback-$slot',
            foodName: slot == 'breakfast'
                ? 'Oatmeal with Almond Milk'
                : slot == 'lunch'
                    ? 'Mixed Vegetable Khichdi'
                    : slot == 'snacks'
                        ? 'Roasted Makhana / Foxnuts'
                        : 'Moong Dal with Steamed Rice',
            mealType: slot,
            portionGrams: 150.0,
            portionUnit: 'bowl',
            portionQuantity: 1.0,
            nutrients: NutrientSnapshotEntity(
              calories: targetSlotKcal.roundToDouble(),
              protein: (targetSlotKcal * 0.05).roundToDouble(),
              carbs: (targetSlotKcal * 0.13).roundToDouble(),
              fat: (targetSlotKcal * 0.03).roundToDouble(),
              fibre: 4.0,
            ),
            isLogged: isSlotLogged,
          ),
        );
      } else {
        final offset = _swapOffsets[slot] ?? 0;
        final selectedFood = candidates[offset % candidates.length];

        const standardServingGrams = 100.0;
        final portionScale = (targetSlotKcal / selectedFood.kcalPer100g).clamp(0.5, 3.0);
        final totalGrams = standardServingGrams * portionScale;

        final nutrients = NutrientSnapshotEntity(
          calories: (selectedFood.kcalPer100g * totalGrams / 100).roundToDouble(),
          protein: (selectedFood.proteinPer100g * totalGrams / 100).roundToDouble(),
          carbs: (selectedFood.carbsPer100g * totalGrams / 100).roundToDouble(),
          fat: (selectedFood.fatPer100g * totalGrams / 100).roundToDouble(),
          fibre: (selectedFood.fibrePer100g * totalGrams / 100).roundToDouble(),
        );

        suggestions.add(
          MealSuggestionEntity(
            foodId: selectedFood.id,
            foodName: selectedFood.name,
            mealType: slot,
            portionGrams: totalGrams.roundToDouble(),
            portionUnit: 'portion',
            portionQuantity: 1.0,
            nutrients: nutrients,
            isLogged: isSlotLogged,
          ),
        );
      }
    }

    final checklist = await _localDataSource.getChecklistForDate(targetDate);

    int realSteps = 0;
    try {
      final healthRepo = sl<HealthRepository>();
      final bundle = await healthRepo.getLatestBundle();
      realSteps = bundle.steps;
    } catch (_) {}

    return DailyPlanBundleEntity(
      targets: targets,
      profile: profile,
      mealSuggestions: suggestions,
      checklistItems: checklist,
      totalCaloriesTarget: targets.calories,
      consumedCalories: consumedKcal,
      remainingCalories: remainingKcal,
      waterLoggedMl: waterLogged,
      stepsRecorded: realSteps,
      workoutMinutesRecorded: workoutMins,
    );
  }

  @override
  Stream<DailyPlanBundleEntity> watchDailyPlan({DateTime? date}) {
    final targetDate = date ?? DateTime.now();
    late StreamController<DailyPlanBundleEntity> controller;

    void refreshPlan() async {
      if (controller.isClosed) return;
      try {
        final plan = await generateDailyPlan(date: targetDate);
        if (!controller.isClosed) {
          controller.add(plan);
        }
      } catch (_) {}
    }

    controller = StreamController<DailyPlanBundleEntity>(
      onListen: () {
        refreshPlan();
      },
    );

    final subMeals =
        _localDataSource.watchMealLogsForDate(targetDate).listen((_) => refreshPlan());
    final subTargets =
        _localDataSource.watchTargets().listen((_) => refreshPlan());
    final subProfile =
        _localDataSource.watchUserProfile().listen((_) => refreshPlan());
    final subWater =
        _localDataSource.watchWaterLogsForDate(targetDate).listen((_) => refreshPlan());
    final subChecklist =
        _localDataSource.watchChecklistForDate(targetDate).listen((_) => refreshPlan());

    controller.onCancel = () {
      subMeals.cancel();
      subTargets.cancel();
      subProfile.cancel();
      subWater.cancel();
      subChecklist.cancel();
    };

    return controller.stream;
  }
}

