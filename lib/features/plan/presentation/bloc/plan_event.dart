part of 'plan_bloc.dart';

abstract class PlanEvent extends Equatable {
  const PlanEvent();

  @override
  List<Object?> get props => [];
}

class PlanRequested extends PlanEvent {
  final DateTime? date;
  const PlanRequested({this.date});

  @override
  List<Object?> get props => [date];
}

class PlanMealSwapped extends PlanEvent {
  final String mealType;
  const PlanMealSwapped(this.mealType);

  @override
  List<Object?> get props => [mealType];
}

class PlanChecklistToggled extends PlanEvent {
  final String itemKey;
  final DateTime date;
  const PlanChecklistToggled({required this.itemKey, required this.date});

  @override
  List<Object?> get props => [itemKey, date];
}

class PlanTargetsUpdated extends PlanEvent {
  final double calories;
  final double protein;
  final double carbs;
  final double fat;
  final double fibre;
  final double waterMl;
  final int steps;
  final double sleepHours;
  final double? targetWeightKg;
  final String? gender;

  const PlanTargetsUpdated({
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fibre,
    required this.waterMl,
    required this.steps,
    required this.sleepHours,
    this.targetWeightKg,
    this.gender,
  });

  @override
  List<Object?> get props => [
        calories,
        protein,
        carbs,
        fat,
        fibre,
        waterMl,
        steps,
        sleepHours,
        targetWeightKg,
        gender,
      ];
}

