import 'package:equatable/equatable.dart';

class FavouriteFoodEntity extends Equatable {
  final String foodId;
  final String name;
  final String? hindiName;
  final String category;
  final double kcalPer100g;
  final double proteinPer100g;
  final double carbsPer100g;
  final double fatPer100g;
  final double fibrePer100g;
  final String defaultUnit;
  final double defaultServingGrams;
  final bool isCustom;
  final DateTime createdAt;

  const FavouriteFoodEntity({
    required this.foodId,
    required this.name,
    this.hindiName,
    this.category = 'General',
    required this.kcalPer100g,
    required this.proteinPer100g,
    required this.carbsPer100g,
    required this.fatPer100g,
    required this.fibrePer100g,
    this.defaultUnit = 'serving',
    this.defaultServingGrams = 100.0,
    this.isCustom = false,
    required this.createdAt,
  });

  Map<String, dynamic> toJson() => {
        'foodId': foodId,
        'name': name,
        'hindiName': hindiName,
        'category': category,
        'kcalPer100g': kcalPer100g,
        'proteinPer100g': proteinPer100g,
        'carbsPer100g': carbsPer100g,
        'fatPer100g': fatPer100g,
        'fibrePer100g': fibrePer100g,
        'defaultUnit': defaultUnit,
        'defaultServingGrams': defaultServingGrams,
        'isCustom': isCustom,
        'createdAt': createdAt.toIso8601String(),
      };

  factory FavouriteFoodEntity.fromJson(Map<String, dynamic> json) =>
      FavouriteFoodEntity(
        foodId: (json['foodId'] ?? json['id']) as String? ?? '',
        name: json['name'] as String? ?? '',
        hindiName: json['hindiName'] as String?,
        category: json['category'] as String? ?? 'General',
        kcalPer100g: ((json['kcalPer100g'] ??
                json['kcal'] ??
                json['caloriesPer100g'] ??
                json['calories']) as num?)
            ?.toDouble() ??
            0.0,
        proteinPer100g: ((json['proteinPer100g'] ?? json['protein']) as num?)
                ?.toDouble() ??
            0.0,
        carbsPer100g:
            ((json['carbsPer100g'] ?? json['carbs']) as num?)?.toDouble() ??
                0.0,
        fatPer100g:
            ((json['fatPer100g'] ?? json['fat']) as num?)?.toDouble() ?? 0.0,
        fibrePer100g:
            ((json['fibrePer100g'] ?? json['fibre']) as num?)?.toDouble() ??
                0.0,
        defaultUnit:
            (json['defaultUnit'] ?? json['unit']) as String? ?? 'serving',
        defaultServingGrams:
            ((json['defaultServingGrams'] ?? json['servingGrams']) as num?)
                ?.toDouble() ??
                100.0,
        isCustom: json['isCustom'] as bool? ?? false,
        createdAt: json['createdAt'] != null
            ? DateTime.tryParse(json['createdAt'] as String) ?? DateTime.now()
            : DateTime.now(),
      );

  @override
  List<Object?> get props => [foodId, name, kcalPer100g];
}

