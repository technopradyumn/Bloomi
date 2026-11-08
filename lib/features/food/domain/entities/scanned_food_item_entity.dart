import 'package:bloomi/features/food/domain/entities/food_search_result_entity.dart';
import 'package:equatable/equatable.dart';

class ScannedFoodItemEntity extends Equatable {
  final String name;
  final double estimatedGrams;
  final String unit;
  final double confidence;
  final String matchedCategory;
  final FoodSearchResultEntity? matchedFood;
  final double calories;
  final double protein;
  final double carbs;
  final double fat;

  const ScannedFoodItemEntity({
    required this.name,
    required this.estimatedGrams,
    required this.unit,
    required this.confidence,
    required this.matchedCategory,
    this.matchedFood,
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
  });

  ScannedFoodItemEntity copyWith({
    String? name,
    double? estimatedGrams,
    String? unit,
    double? confidence,
    String? matchedCategory,
    FoodSearchResultEntity? matchedFood,
    double? calories,
    double? protein,
    double? carbs,
    double? fat,
  }) {
    return ScannedFoodItemEntity(
      name: name ?? this.name,
      estimatedGrams: estimatedGrams ?? this.estimatedGrams,
      unit: unit ?? this.unit,
      confidence: confidence ?? this.confidence,
      matchedCategory: matchedCategory ?? this.matchedCategory,
      matchedFood: matchedFood ?? this.matchedFood,
      calories: calories ?? this.calories,
      protein: protein ?? this.protein,
      carbs: carbs ?? this.carbs,
      fat: fat ?? this.fat,
    );
  }

  @override
  List<Object?> get props => [
        name,
        estimatedGrams,
        unit,
        confidence,
        matchedCategory,
        matchedFood,
        calories,
        protein,
        carbs,
        fat,
      ];
}

