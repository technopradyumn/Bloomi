import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/food/domain/entities/barcode_product_entity.dart';
import 'package:bloomi/features/food/domain/entities/food_diary_state_entity.dart';
import 'package:bloomi/features/food/domain/entities/food_search_result_entity.dart';
import 'package:bloomi/features/food/domain/entities/nutrient_snapshot_entity.dart';
import 'package:bloomi/features/food/domain/entities/scanned_food_item_entity.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';

class WatchFoodDiaryUseCase {
  const WatchFoodDiaryUseCase(this._repository);
  final FoodRepository _repository;

  Stream<FoodDiaryStateEntity> call(DateTime date) =>
      _repository.watchFoodDiaryForDate(date);
}

class SearchFoodUseCase {
  const SearchFoodUseCase(this._repository);
  final FoodRepository _repository;

  Future<List<FoodSearchResultEntity>> call(
    String query, {
    String? category,
    String? mealType,
    int limit = 50,
  }) =>
      _repository.searchFoods(
        query,
        category: category,
        mealType: mealType,
        limit: limit,
      );
}

class LogMealUseCase {
  const LogMealUseCase(this._repository);
  final FoodRepository _repository;

  Future<void> call({
    required String mealType,
    required String foodName,
    required double quantity,
    required String unit,
    required double totalGrams,
    required NutrientSnapshotEntity nutrients,
    DateTime? timestamp,
    String? foodReference,
  }) =>
      _repository.logMeal(
        mealType: mealType,
        foodName: foodName,
        quantity: quantity,
        unit: unit,
        totalGrams: totalGrams,
        nutrients: nutrients,
        timestamp: timestamp,
        foodReference: foodReference,
      );
}

class DeleteMealUseCase {
  const DeleteMealUseCase(this._repository);
  final FoodRepository _repository;

  Future<void> call(String id) => _repository.deleteMealLog(id);
}

class RestoreMealUseCase {
  const RestoreMealUseCase(this._repository);
  final FoodRepository _repository;

  Future<void> call(String id) => _repository.restoreMealLog(id);
}

class CopyMealUseCase {
  const CopyMealUseCase(this._repository);
  final FoodRepository _repository;

  Future<void> call(MealLog log, DateTime targetDate, {String? targetMealType}) =>
      _repository.copyMealToDate(log, targetDate, targetMealType: targetMealType);
}

class CreateCustomFoodUseCase {
  const CreateCustomFoodUseCase(this._repository);
  final FoodRepository _repository;

  Future<void> call({
    required String name,
    required String category,
    required double kcal,
    required double protein,
    required double carbs,
    required double fat,
    required double fibre,
    String defaultUnit = 'serving',
    double defaultGrams = 100.0,
    List<Map<String, dynamic>>? ingredients,
  }) =>
      _repository.createCustomFood(
        name: name,
        category: category,
        kcal: kcal,
        protein: protein,
        carbs: carbs,
        fat: fat,
        fibre: fibre,
        defaultUnit: defaultUnit,
        defaultGrams: defaultGrams,
        ingredients: ingredients,
      );
}

class EnsureFoodsSeededUseCase {
  const EnsureFoodsSeededUseCase(this._repository);
  final FoodRepository _repository;

  Future<int> call() => _repository.ensureSeeded();
}

class LookupBarcodeUseCase {
  const LookupBarcodeUseCase(this._repository);
  final FoodRepository _repository;

  Future<BarcodeProductEntity?> call(String barcode) =>
      _repository.lookupBarcode(barcode);
}

class ScanFoodPhotoUseCase {
  const ScanFoodPhotoUseCase(this._repository);
  final FoodRepository _repository;

  Future<List<ScannedFoodItemEntity>> call(String imagePath) =>
      _repository.scanFoodPhoto(imagePath);
}

