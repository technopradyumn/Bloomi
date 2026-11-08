import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/plan/domain/entities/meal_suggestion_entity.dart';
import 'package:equatable/equatable.dart';

class DailyPlanBundleEntity extends Equatable {
  const DailyPlanBundleEntity({
    required this.targets,
    this.profile,
    required this.mealSuggestions,
    required this.checklistItems,
    required this.totalCaloriesTarget,
    required this.consumedCalories,
    required this.remainingCalories,
    required this.waterLoggedMl,
    required this.stepsRecorded,
    required this.workoutMinutesRecorded,
  });

  final Target targets;
  final UserProfile? profile;
  final List<MealSuggestionEntity> mealSuggestions;
  final List<PlanChecklist> checklistItems;
  final double totalCaloriesTarget;
  final double consumedCalories;
  final double remainingCalories;
  final int waterLoggedMl;
  final int stepsRecorded;
  final int workoutMinutesRecorded;

  @override
  List<Object?> get props => [
        targets,
        profile,
        mealSuggestions,
        checklistItems,
        totalCaloriesTarget,
        consumedCalories,
        remainingCalories,
        waterLoggedMl,
        stepsRecorded,
        workoutMinutesRecorded,
      ];
}

typedef DailyPlanBundle = DailyPlanBundleEntity;

