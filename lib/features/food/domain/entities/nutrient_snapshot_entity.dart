import 'package:equatable/equatable.dart';

class NutrientSnapshotEntity extends Equatable {
  const NutrientSnapshotEntity({
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

  static const empty = NutrientSnapshotEntity(
    calories: 0,
    protein: 0,
    carbs: 0,
    fat: 0,
    fibre: 0,
  );

  @override
  List<Object?> get props => [calories, protein, carbs, fat, fibre];
}

