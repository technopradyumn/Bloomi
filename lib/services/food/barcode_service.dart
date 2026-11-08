import 'dart:convert';
import 'package:bloomi/core/database/app_database.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:drift/drift.dart';
import 'package:http/http.dart' as http;

class BarcodeProduct {
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

  const BarcodeProduct({
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

  double get caloriesPerServing => (kcalPer100g * servingGrams) / 100.0;
  double get proteinPerServing => (proteinPer100g * servingGrams) / 100.0;
  double get carbsPerServing => (carbsPer100g * servingGrams) / 100.0;
  double get fatPerServing => (fatPer100g * servingGrams) / 100.0;
}

class BarcodeLookupResult {
  final bool isFound;
  final BarcodeProduct? product;
  final String? errorMessage;

  const BarcodeLookupResult({
    required this.isFound,
    this.product,
    this.errorMessage,
  });
}

class BarcodeService {
  final AppDatabase _db;
  final http.Client _client;

  BarcodeService(this._db, [http.Client? client])
      : _client = client ?? http.Client();

  Future<BarcodeLookupResult> lookupBarcode(String barcode, {String? mockJson}) async {
    final cleanBarcode = barcode.trim().replaceAll(RegExp(r'\s+'), '');
    if (cleanBarcode.isEmpty) {
      return const BarcodeLookupResult(isFound: false, errorMessage: 'Barcode cannot be empty.');
    }

    // 1. Check local DB first for instant offline cache
    final localItem = await (_db.select(_db.foodItems)
          ..where((t) => t.id.equals('barcode_$cleanBarcode')))
        .getSingleOrNull();

    if (localItem != null) {
      return BarcodeLookupResult(
        isFound: true,
        product: BarcodeProduct(
          barcode: cleanBarcode,
          name: localItem.name,
          brand: 'Cached Local Food',
          kcalPer100g: localItem.kcalPer100g,
          proteinPer100g: localItem.proteinPer100g,
          carbsPer100g: localItem.carbsPer100g,
          fatPer100g: localItem.fatPer100g,
          fibrePer100g: localItem.fibrePer100g,
          servingSize: '100g',
          servingGrams: 100.0,
        ),
      );
    }

    // 2. Query Open Food Facts API (or use mock for tests)
    try {
      String jsonStr;
      if (mockJson != null) {
        jsonStr = mockJson;
      } else {
        final connectivity = await Connectivity().checkConnectivity();
        if (connectivity.contains(ConnectivityResult.none)) {
          return const BarcodeLookupResult(
            isFound: false,
            errorMessage: 'You are offline. Connect to the internet to search Open Food Facts, or enter food manually.',
          );
        }

        final url = Uri.parse('https://world.openfoodfacts.org/api/v2/product/$cleanBarcode.json');
        final response = await _client.get(
          url,
          headers: {'User-Agent': 'BloomiHealthApp - Android/iOS - Version 1.0'},
        ).timeout(const Duration(seconds: 8));

        if (response.statusCode != 200) {
          return const BarcodeLookupResult(
            isFound: false,
            errorMessage: 'Product not found in Open Food Facts database.',
          );
        }
        jsonStr = response.body;
      }

      final data = jsonDecode(jsonStr) as Map<String, dynamic>;
      final status = data['status'] as int? ?? 0;
      if (status != 1 || data['product'] == null) {
        return const BarcodeLookupResult(
          isFound: false,
          errorMessage: 'Product not found. Would you like to create a custom food item?',
        );
      }

      final p = data['product'] as Map<String, dynamic>;
      final nutriments = (p['nutriments'] as Map<String, dynamic>?) ?? {};

      final name = p['product_name'] as String? ??
          p['product_name_en'] as String? ??
          'Scanned Product';
      final brand = p['brands'] as String? ?? 'General Brand';
      final servingSize = p['serving_size'] as String? ?? '100 g';
      final servingGrams = (p['serving_quantity'] as num?)?.toDouble() ?? 100.0;

      final kcal = (nutriments['energy-kcal_100g'] as num?)?.toDouble() ??
          (nutriments['energy-kcal'] as num?)?.toDouble() ??
          0.0;
      final protein = (nutriments['proteins_100g'] as num?)?.toDouble() ?? 0.0;
      final carbs = (nutriments['carbohydrates_100g'] as num?)?.toDouble() ?? 0.0;
      final fat = (nutriments['fat_100g'] as num?)?.toDouble() ?? 0.0;
      final fibre = (nutriments['fiber_100g'] as num?)?.toDouble() ?? 0.0;

      final product = BarcodeProduct(
        barcode: cleanBarcode,
        name: name,
        brand: brand,
        kcalPer100g: kcal,
        proteinPer100g: protein,
        carbsPer100g: carbs,
        fatPer100g: fat,
        fibrePer100g: fibre,
        servingSize: servingSize,
        servingGrams: servingGrams > 0 ? servingGrams : 100.0,
      );

      // Cache into local Drift FoodItems for fast offline reuse
      final now = DateTime.now();
      await _db.into(_db.foodItems).insertOnConflictUpdate(
            FoodItemsCompanion.insert(
              id: 'barcode_$cleanBarcode',
              name: '$name ($brand)',
              category: 'Packaged Food',
              kcalPer100g: kcal,
              proteinPer100g: protein,
              carbsPer100g: carbs,
              fatPer100g: fat,
              fibrePer100g: fibre,
              sugarPer100g: const Value(0),
              source: 'OpenFoodFacts',
              createdAt: now,
              updatedAt: now,
            ),
          );

      return BarcodeLookupResult(isFound: true, product: product);
    } catch (e) {
      return BarcodeLookupResult(
        isFound: false,
        errorMessage: 'Barcode search error: $e',
      );
    }
  }
}
