import 'package:equatable/equatable.dart';

class BarcodeProductEntity extends Equatable {
  const BarcodeProductEntity({
    required this.barcode,
    required this.name,
    required this.brand,
    required this.kcalPer100g,
    required this.proteinPer100g,
    required this.carbsPer100g,
    required this.fatPer100g,
    required this.fibrePer100g,
    required this.servingSize,
    required this.servingGrams,
  });

  final String barcode;
  final String name;
  final String brand;
  final double kcalPer100g;
  final double proteinPer100g;
  final double carbsPer100g;
  final double fatPer100g;
  final double fibrePer100g;
  final String servingSize;
  final double servingGrams;

  double get caloriesPerServing => (kcalPer100g * servingGrams) / 100.0;
  double get proteinPerServing => (proteinPer100g * servingGrams) / 100.0;
  double get carbsPerServing => (carbsPer100g * servingGrams) / 100.0;
  double get fatPerServing => (fatPer100g * servingGrams) / 100.0;

  @override
  List<Object?> get props => [
        barcode,
        name,
        brand,
        kcalPer100g,
        proteinPer100g,
        carbsPer100g,
        fatPer100g,
        fibrePer100g,
        servingSize,
        servingGrams,
      ];
}

typedef BarcodeProduct = BarcodeProductEntity;

