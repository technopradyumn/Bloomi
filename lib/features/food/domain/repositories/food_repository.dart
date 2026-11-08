import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/food/domain/entities/barcode_product_entity.dart';
import 'package:bloomi/features/food/domain/entities/favourite_food_entity.dart';
import 'package:bloomi/features/food/domain/entities/food_diary_state_entity.dart';
import 'package:bloomi/features/food/domain/entities/food_search_result_entity.dart';
import 'package:bloomi/features/food/domain/entities/nutrient_snapshot_entity.dart';
import 'package:bloomi/features/food/domain/entities/scanned_food_item_entity.dart';

abstract class FoodRepository {
  Stream<FoodDiaryStateEntity> watchFoodDiaryForDate(DateTime date);
  Stream<List<MealLog>> watchMealsForDate(DateTime date);
  Stream<List<MealLog>> watchRecentFoods({int limit = 15});
  Future<bool> isFavourite(String foodId);
  Future<bool> toggleFavourite(FavouriteFoodEntity food);
  Future<List<FavouriteFoodEntity>> getFavourites();
  Stream<List<FavouriteFoodEntity>> watchFavourites();
  Future<List<FoodSearchResultEntity>> searchFoods(
    String query, {
    String? category,
    String? mealType,
    int limit = 50,
  });
  Future<void> logMeal({
    required String mealType,
    required String foodName,
    required double quantity,
    required String unit,
    required double totalGrams,
    required NutrientSnapshotEntity nutrients,
    DateTime? timestamp,
    String? foodReference,
  });
  Future<void> deleteMealLog(String id);
  Future<void> restoreMealLog(String id);
  Future<void> copyMealToDate(MealLog log, DateTime targetDate, {String? targetMealType});
  Future<void> createCustomFood({
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
  });
  Future<int> ensureSeeded();
  Future<BarcodeProductEntity?> lookupBarcode(String barcode);
  Future<List<ScannedFoodItemEntity>> scanFoodPhoto(String imagePath);
}

