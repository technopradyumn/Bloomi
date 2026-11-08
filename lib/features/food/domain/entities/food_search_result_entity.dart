import 'package:equatable/equatable.dart';

class FoodSearchResultEntity extends Equatable {
  const FoodSearchResultEntity({
    required this.id,
    required this.name,
    this.hindiName,
    required this.category,
    required this.kcalPer100g,
    required this.proteinPer100g,
    required this.carbsPer100g,
    required this.fatPer100g,
    required this.fibrePer100g,
    this.sugarPer100g,
    this.sodiumPer100g,
    required this.source,
    this.defaultServingName = 'serving',
    this.defaultServingGrams = 100.0,
    this.isCustom = false,
  });

  final String id;
  final String name;
  final String? hindiName;
  final String category;
  final double kcalPer100g;
  final double proteinPer100g;
  final double carbsPer100g;
  final double fatPer100g;
  final double fibrePer100g;
  final double? sugarPer100g;
  final double? sodiumPer100g;
  final String source;
  final String defaultServingName;
  final double defaultServingGrams;
  final bool isCustom;

  double get caloriesPerDefaultServing => (kcalPer100g * defaultServingGrams) / 100.0;
  double get proteinPerDefaultServing => (proteinPer100g * defaultServingGrams) / 100.0;

  @override
  List<Object?> get props => [
        id,
        name,
        hindiName,
        category,
        kcalPer100g,
        proteinPer100g,
        carbsPer100g,
        fatPer100g,
        fibrePer100g,
        sugarPer100g,
        sodiumPer100g,
        source,
        defaultServingName,
        defaultServingGrams,
        isCustom,
      ];
}

// Typedef for backward compatibility where needed
typedef FoodSearchResult = FoodSearchResultEntity;

