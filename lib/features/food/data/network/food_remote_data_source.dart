import 'package:bloomi/core/network/api_client.dart';
import 'package:bloomi/features/food/domain/entities/barcode_product_entity.dart';
import 'package:bloomi/features/food/domain/entities/scanned_food_item_entity.dart';

abstract class FoodRemoteDataSource {
  Future<BarcodeProductEntity?> lookupBarcode(String barcode);
  Future<List<ScannedFoodItemEntity>> scanFoodPhoto(String imagePath);
}

class FoodRemoteDataSourceImpl implements FoodRemoteDataSource {
  FoodRemoteDataSourceImpl({ApiClient? apiClient})
      : _apiClient = apiClient ?? ApiClient();

  final ApiClient _apiClient;

  @override
  Future<BarcodeProductEntity?> lookupBarcode(String barcode) async {
    try {
      final uri = Uri.parse(
        'https://world.openfoodfacts.org/api/v2/product/$barcode.json?fields=product_name,brands,nutriments,serving_size,serving_quantity',
      );
      final json = await _apiClient.get(uri);
      if (json is Map<String, dynamic> && json['status'] == 1) {
        final product = json['product'] as Map<String, dynamic>?;
        if (product != null) {
          final nutriments = product['nutriments'] as Map<String, dynamic>? ?? {};
          final name = (product['product_name'] as String?) ?? 'Packaged Food';
          final brand = (product['brands'] as String?) ?? 'Brand';
          final servingSize = (product['serving_size'] as String?) ?? '100g';
          final servingGrams = (product['serving_quantity'] as num?)?.toDouble() ?? 100.0;

          final kcal = (nutriments['energy-kcal_100g'] as num?)?.toDouble() ??
              ((nutriments['energy_100g'] as num?)?.toDouble() ?? 0.0) / 4.184;
          final protein = (nutriments['proteins_100g'] as num?)?.toDouble() ?? 0.0;
          final carbs = (nutriments['carbohydrates_100g'] as num?)?.toDouble() ?? 0.0;
          final fat = (nutriments['fat_100g'] as num?)?.toDouble() ?? 0.0;
          final fibre = (nutriments['fiber_100g'] as num?)?.toDouble() ?? 0.0;

          return BarcodeProductEntity(
            barcode: barcode,
            name: name,
            brand: brand,
            kcalPer100g: kcal,
            proteinPer100g: protein,
            carbsPer100g: carbs,
            fatPer100g: fat,
            fibrePer100g: fibre,
            servingSize: servingSize,
            servingGrams: servingGrams,
          );
        }
      }
      return null;
    } catch (_) {
      return null;
    }
  }

  @override
  Future<List<ScannedFoodItemEntity>> scanFoodPhoto(String imagePath) async {
    // Simulated/heuristic AI visual food detection
    await Future<void>.delayed(const Duration(milliseconds: 1200));
    return const [
      ScannedFoodItemEntity(
        name: 'Roti / Chapati',
        estimatedGrams: 40.0,
        unit: 'roti (40g)',
        confidence: 0.92,
        matchedCategory: 'Breads & Cereals',
        calories: 120.0,
        protein: 3.5,
        carbs: 22.0,
        fat: 1.2,
      ),
      ScannedFoodItemEntity(
        name: 'Dal Tadka',
        estimatedGrams: 150.0,
        unit: 'katori (150g)',
        confidence: 0.88,
        matchedCategory: 'Pulses & Legumes',
        calories: 165.0,
        protein: 9.0,
        carbs: 24.0,
        fat: 3.5,
      ),
    ];
  }
}
