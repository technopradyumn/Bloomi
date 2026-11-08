import 'package:bloomi/core/widgets/macro_bars.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:equatable/equatable.dart';

class HomeDashboardEntity extends Equatable {
  const HomeDashboardEntity({
    required this.greeting,
    required this.userName,
    required this.mascotState,
    required this.targetCalories,
    required this.consumedCalories,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fibre,
    required this.targetWaterMl,
    required this.consumedWaterMl,
    required this.streakDays,
  });

  final String greeting;
  final String userName;
  final MascotState mascotState;
  final double targetCalories;
  final double consumedCalories;
  final MacroData protein;
  final MacroData carbs;
  final MacroData fat;
  final MacroData fibre;
  final double targetWaterMl;
  final int consumedWaterMl;
  final int streakDays;

  double get caloriesRemaining =>
      (targetCalories - consumedCalories).clamp(0.0, targetCalories);
  double get calorieProgress =>
      targetCalories > 0 ? (consumedCalories / targetCalories).clamp(0.0, 1.0) : 0.0;
  double get waterProgress =>
      targetWaterMl > 0 ? (consumedWaterMl / targetWaterMl).clamp(0.0, 1.0) : 0.0;

  @override
  List<Object?> get props => [
        greeting,
        userName,
        mascotState,
        targetCalories,
        consumedCalories,
        protein,
        carbs,
        fat,
        fibre,
        targetWaterMl,
        consumedWaterMl,
        streakDays,
      ];
}

