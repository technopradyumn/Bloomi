import 'package:bloomi/core/database/app_database.dart';
import 'package:equatable/equatable.dart';

class DayMealTotalsEntity extends Equatable {
  const DayMealTotalsEntity({
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fibre,
  });

  final double calories;
  final double protein;
  final double carbs;
  final double fat;
  final double fibre;

  static const empty = DayMealTotalsEntity(
    calories: 0,
    protein: 0,
    carbs: 0,
    fat: 0,
    fibre: 0,
  );

  @override
  List<Object?> get props => [calories, protein, carbs, fat, fibre];
}

typedef DayMealTotals = DayMealTotalsEntity;

class FoodDiaryStateEntity extends Equatable {
  const FoodDiaryStateEntity({
    required this.date,
    required this.breakfast,
    required this.lunch,
    required this.snack,
    required this.dinner,
    required this.breakfastTotals,
    required this.lunchTotals,
    required this.snackTotals,
    required this.dinnerTotals,
    required this.dayTotals,
    this.target,
  });

  factory FoodDiaryStateEntity.empty(DateTime date) => FoodDiaryStateEntity(
        date: date,
        breakfast: const [],
        lunch: const [],
        snack: const [],
        dinner: const [],
        breakfastTotals: DayMealTotalsEntity.empty,
        lunchTotals: DayMealTotalsEntity.empty,
        snackTotals: DayMealTotalsEntity.empty,
        dinnerTotals: DayMealTotalsEntity.empty,
        dayTotals: DayMealTotalsEntity.empty,
      );

  final DateTime date;
  final List<MealLog> breakfast;
  final List<MealLog> lunch;
  final List<MealLog> snack;
  final List<MealLog> dinner;
  final DayMealTotals breakfastTotals;
  final DayMealTotals lunchTotals;
  final DayMealTotals snackTotals;
  final DayMealTotals dinnerTotals;
  final DayMealTotals dayTotals;
  final Target? target;

  double get targetCalories => target?.calories ?? 2000.0;
  double get caloriesRemaining =>
      (targetCalories - dayTotals.calories).clamp(0.0, targetCalories);
  double get calorieProgress =>
      targetCalories > 0 ? (dayTotals.calories / targetCalories).clamp(0.0, 1.0) : 0.0;

  @override
  List<Object?> get props => [
        date,
        breakfast,
        lunch,
        snack,
        dinner,
        breakfastTotals,
        lunchTotals,
        snackTotals,
        dinnerTotals,
        dayTotals,
        target,
      ];
}

