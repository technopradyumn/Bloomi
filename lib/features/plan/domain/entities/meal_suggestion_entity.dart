import 'package:bloomi/features/food/domain/entities/nutrient_snapshot_entity.dart';
import 'package:equatable/equatable.dart';

class MealSuggestionEntity extends Equatable {
  const MealSuggestionEntity({
    required this.foodId,
    required this.foodName,
    required this.mealType,
    required this.portionGrams,
    required this.portionUnit,
    required this.portionQuantity,
    required this.nutrients,
    this.isLogged = false,
  });

  final String foodId;
  final String foodName;
  final String mealType; // 'breakfast', 'lunch', 'snacks', 'dinner'
  final double portionGrams;
  final String portionUnit;
  final double portionQuantity;
  final NutrientSnapshotEntity nutrients;
  final bool isLogged;

  MealSuggestionEntity copyWith({
    String? foodId,
    String? foodName,
    String? mealType,
    double? portionGrams,
    String? portionUnit,
    double? portionQuantity,
    NutrientSnapshotEntity? nutrients,
    bool? isLogged,
  }) {
    return MealSuggestionEntity(
      foodId: foodId ?? this.foodId,
      foodName: foodName ?? this.foodName,
      mealType: mealType ?? this.mealType,
      portionGrams: portionGrams ?? this.portionGrams,
      portionUnit: portionUnit ?? this.portionUnit,
      portionQuantity: portionQuantity ?? this.portionQuantity,
      nutrients: nutrients ?? this.nutrients,
      isLogged: isLogged ?? this.isLogged,
    );
  }

  @override
  List<Object?> get props => [
        foodId,
        foodName,
        mealType,
        portionGrams,
        portionUnit,
        portionQuantity,
        nutrients,
        isLogged,
      ];
}

typedef MealSuggestion = MealSuggestionEntity;

