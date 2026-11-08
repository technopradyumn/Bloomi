import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/food/data/local/food_local_data_source.dart';
import 'package:bloomi/features/food/data/models/nutrient_snapshot_model.dart';
import 'package:bloomi/features/food/data/network/food_remote_data_source.dart';
import 'package:bloomi/features/food/domain/entities/barcode_product_entity.dart';
import 'package:bloomi/features/food/domain/entities/favourite_food_entity.dart';
import 'package:bloomi/features/food/domain/entities/food_diary_state_entity.dart';
import 'package:bloomi/features/food/domain/entities/food_search_result_entity.dart';
import 'package:bloomi/features/food/domain/entities/nutrient_snapshot_entity.dart';
import 'package:bloomi/features/food/domain/entities/scanned_food_item_entity.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';

class FoodRepositoryImpl implements FoodRepository {
  FoodRepositoryImpl({
    required FoodLocalDataSource localDataSource,
    required FoodRemoteDataSource remoteDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  final FoodLocalDataSource _localDataSource;
  final FoodRemoteDataSource _remoteDataSource;

  @override
  Stream<FoodDiaryStateEntity> watchFoodDiaryForDate(DateTime date) {
    return _localDataSource.watchMealsForDate(date).asyncMap((allMeals) async {
      final target = await _localDataSource.getLatestTarget();

      final breakfast = allMeals.where((m) => m.mealType.toLowerCase() == 'breakfast').toList();
      final lunch = allMeals.where((m) => m.mealType.toLowerCase() == 'lunch').toList();
      final snack = allMeals.where((m) => m.mealType.toLowerCase() == 'snack').toList();
      final dinner = allMeals.where((m) => m.mealType.toLowerCase() == 'dinner').toList();

      DayMealTotalsEntity computeTotals(List<MealLog> meals) {
        double kcal = 0;
        double p = 0;
        double c = 0;
        double f = 0;
        double fib = 0;

        for (final meal in meals) {
          final snap = NutrientSnapshotModel.fromJson(meal.computedNutrientsSnapshot);
          kcal += snap.calories;
          p += snap.protein;
          c += snap.carbs;
          f += snap.fat;
          fib += snap.fibre;
        }
        return DayMealTotalsEntity(calories: kcal, protein: p, carbs: c, fat: f, fibre: fib);
      }

      final bTotals = computeTotals(breakfast);
      final lTotals = computeTotals(lunch);
      final sTotals = computeTotals(snack);
      final dTotals = computeTotals(dinner);
      final dayTotals = computeTotals(allMeals);

      return FoodDiaryStateEntity(
        date: date,
        breakfast: breakfast,
        lunch: lunch,
        snack: snack,
        dinner: dinner,
        breakfastTotals: bTotals,
        lunchTotals: lTotals,
        snackTotals: sTotals,
        dinnerTotals: dTotals,
        dayTotals: dayTotals,
        target: target,
      );
    });
  }

  @override
  Stream<List<MealLog>> watchMealsForDate(DateTime date) =>
      _localDataSource.watchMealsForDate(date);

  @override
  Stream<List<MealLog>> watchRecentFoods({int limit = 15}) =>
      _localDataSource.watchRecentFoods(limit: limit);

  @override
  Future<bool> isFavourite(String foodId) =>
      _localDataSource.isFavourite(foodId);

  @override
  Future<bool> toggleFavourite(FavouriteFoodEntity food) =>
      _localDataSource.toggleFavourite(food);

  @override
  Future<List<FavouriteFoodEntity>> getFavourites() =>
      _localDataSource.getFavourites();

  @override
  Stream<List<FavouriteFoodEntity>> watchFavourites() =>
      _localDataSource.watchFavourites();

  @override
  Future<List<FoodSearchResultEntity>> searchFoods(
    String query, {
    String? category,
    String? mealType,
    int limit = 50,
  }) =>
      _localDataSource.searchFoods(
        query,
        category: category,
        mealType: mealType,
        limit: limit,
      );

  @override
  Future<void> logMeal({
    required String mealType,
    required String foodName,
    required double quantity,
    required String unit,
    required double totalGrams,
    required NutrientSnapshotEntity nutrients,
    DateTime? timestamp,
    String? foodReference,
  }) =>
      _localDataSource.logMeal(
        mealType: mealType,
        foodName: foodName,
        foodReference: foodReference ?? 'food_ref',
        quantity: quantity,
        unit: unit,
        totalGrams: totalGrams,
        snapshot: nutrients,
        timestamp: timestamp,
      );

  @override
  Future<void> deleteMealLog(String id) => _localDataSource.deleteMealLog(id);

  @override
  Future<void> restoreMealLog(String id) => _localDataSource.restoreMealLog(id);

  @override
  Future<void> copyMealToDate(MealLog log, DateTime targetDate, {String? targetMealType}) =>
      _localDataSource.copyMealToDate(log, targetDate, targetMealType: targetMealType);

  @override
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
  }) =>
      _localDataSource.createCustomFood(
        name: name,
        servingSizeGrams: defaultGrams,
        kcal: kcal,
        protein: protein,
        carbs: carbs,
        fat: fat,
        fibre: fibre,
        ingredients: ingredients,
      );

  @override
  Future<int> ensureSeeded() => _localDataSource.ensureSeeded();

  @override
  Future<BarcodeProductEntity?> lookupBarcode(String barcode) =>
      _remoteDataSource.lookupBarcode(barcode);

  @override
  Future<List<ScannedFoodItemEntity>> scanFoodPhoto(String imagePath) =>
      _remoteDataSource.scanFoodPhoto(imagePath);
}

