import 'dart:async';
import 'dart:convert';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/food/domain/entities/favourite_food_entity.dart';
import 'package:bloomi/features/food/domain/entities/food_search_result_entity.dart';
import 'package:bloomi/features/food/domain/entities/nutrient_snapshot_entity.dart';
import 'package:bloomi/services/widget/widget_sync_service.dart';
import 'package:drift/drift.dart';
import 'package:drift/drift.dart' as drift;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

abstract class FoodLocalDataSource {
  Stream<List<MealLog>> watchMealsForDate(DateTime date);
  Stream<List<MealLog>> watchRecentFoods({int limit = 15});
  Future<bool> isFavourite(String foodId);
  Future<bool> toggleFavourite(FavouriteFoodEntity food);
  Future<List<FavouriteFoodEntity>> getFavourites();
  Stream<List<FavouriteFoodEntity>> watchFavourites();
  Future<Target?> getLatestTarget();
  Future<List<FoodSearchResultEntity>> searchFoods(
    String query, {
    String? category,
    String? mealType,
    int limit = 50,
  });
  Future<List<FoodUnit>> getFoodUnits(String foodId);
  Future<MealLog> logMeal({
    required String mealType,
    required String foodName,
    required String foodReference,
    required double quantity,
    required String unit,
    required double totalGrams,
    required NutrientSnapshotEntity snapshot,
    DateTime? timestamp,
  });
  Future<void> deleteMealLog(String id);
  Future<void> restoreMealLog(String id);
  Future<void> copyMealToDate(MealLog meal, DateTime targetDate, {String? targetMealType});
  Future<void> createCustomFood({
    required String name,
    required double servingSizeGrams,
    required double kcal,
    required double protein,
    required double carbs,
    required double fat,
    required double fibre,
    List<Map<String, dynamic>>? ingredients,
  });
  Stream<List<CustomFood>> watchCustomFoods();
  Future<List<CustomFood>> getCustomFoods();
  Future<int> ensureSeeded();
}

class FoodLocalDataSourceImpl implements FoodLocalDataSource {
  FoodLocalDataSourceImpl(this._db,
      {SharedPreferences? prefs, String Function()? userIdProvider})
      : _prefs = prefs,
        _userIdProvider = userIdProvider;
  final AppDatabase _db;
  final SharedPreferences? _prefs;
  final String Function()? _userIdProvider;

  final _favouritesStreamController =
      StreamController<List<FavouriteFoodEntity>>.broadcast();

  String get _currentUserId => _userIdProvider?.call() ?? 'default_user';
  String get _favKey => 'bloomi_favourites_$_currentUserId';

  @override
  Future<List<FavouriteFoodEntity>> getFavourites() async {
    final prefs = _prefs ?? await SharedPreferences.getInstance();
    var raw = prefs.getString(_favKey);
    if ((raw == null || raw.isEmpty) && _currentUserId != 'default_user') {
      raw = prefs.getString('bloomi_favourites_default_user');
    }
    if (raw == null || raw.isEmpty) return [];
    try {
      final List<dynamic> list = jsonDecode(raw) as List<dynamic>;
      return list
          .map((e) => FavouriteFoodEntity.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (_) {
      return [];
    }
  }

  @override
  Stream<List<FavouriteFoodEntity>> watchFavourites() {
    return () async* {
      yield await getFavourites();
      yield* _favouritesStreamController.stream;
    }().asBroadcastStream();
  }

  @override
  Future<bool> isFavourite(String foodId) async {
    final list = await getFavourites();
    final lowerId = foodId.trim().toLowerCase();
    return list.any((f) =>
        f.foodId == foodId ||
        (f.name.isNotEmpty && f.name.trim().toLowerCase() == lowerId));
  }

  @override
  Future<bool> toggleFavourite(FavouriteFoodEntity food) async {
    final prefs = _prefs ?? await SharedPreferences.getInstance();
    final current = await getFavourites();
    final foodIdLower = food.foodId.trim().toLowerCase();
    final foodNameLower = food.name.trim().toLowerCase();

    final index = current.indexWhere((f) =>
        (f.foodId.isNotEmpty && f.foodId == food.foodId) ||
        (f.name.isNotEmpty && f.name.trim().toLowerCase() == foodNameLower) ||
        (f.foodId.isNotEmpty && f.foodId.toLowerCase() == foodIdLower));

    bool nowFav;
    if (index >= 0) {
      current.removeAt(index);
      nowFav = false;
    } else {
      current.insert(0, food);
      nowFav = true;
    }
    final encoded = jsonEncode(current.map((e) => e.toJson()).toList());
    await prefs.setString(_favKey, encoded);
    if (_currentUserId != 'default_user') {
      await prefs.setString('bloomi_favourites_default_user', encoded);
    }
    _favouritesStreamController.add(List<FavouriteFoodEntity>.unmodifiable(current));
    return nowFav;
  }

  static const Map<String, List<String>> _synonyms = {
    'roti': ['chapati', 'phulka', 'flatbread', 'bread'],
    'chapati': ['roti', 'phulka', 'flatbread'],
    'phulka': ['roti', 'chapati'],
    'dal': ['daal', 'dahl', 'lentil', 'toor', 'moong', 'chana', 'masoor', 'urad'],
    'daal': ['dal', 'lentil'],
    'chawal': ['rice', 'pulao', 'biryani'],
    'rice': ['chawal', 'pulao', 'biryani'],
    'paneer': ['cottage cheese'],
    'dahi': ['curd', 'yogurt'],
    'curd': ['dahi', 'yogurt'],
    'yogurt': ['dahi', 'curd'],
    'sabzi': ['curry', 'vegetable', 'aloo', 'gobi', 'bhindi', 'palak'],
    'aloo': ['potato'],
    'potato': ['aloo'],
    'gobi': ['cauliflower', 'cabbage'],
    'poha': ['flattened rice', 'chivda', 'aval'],
    'kela': ['banana'],
    'banana': ['kela'],
    'seb': ['apple'],
    'apple': ['seb'],
    'aam': ['mango'],
    'mango': ['aam'],
    'chai': ['tea'],
    'tea': ['chai'],
    'doodh': ['milk'],
    'milk': ['doodh'],
    'anda': ['egg', 'omelette', 'bhurji'],
    'egg': ['anda', 'omelette', 'bhurji'],
    'murgh': ['chicken'],
    'chicken': ['murgh'],
    'machli': ['fish'],
    'fish': ['machli'],
    'palak': ['spinach'],
    'spinach': ['palak'],
    'matar': ['peas'],
    'peas': ['matar'],
    'bhindi': ['okra', 'ladyfinger'],
    'kheera': ['cucumber'],
    'gajar': ['carrot'],
    'shahi': ['paneer'],
    'rajma': ['kidney beans'],
    'chole': ['chana', 'chickpeas'],
  };

  @override
  Stream<List<MealLog>> watchMealsForDate(DateTime date) {
    final startOfDay = DateTime(date.year, date.month, date.day);
    final endOfDay = DateTime(date.year, date.month, date.day, 23, 59, 59);

    return (_db.select(_db.mealLogs)
          ..where((t) =>
              t.userId.equals(_currentUserId) &
              t.date.isBiggerOrEqualValue(startOfDay) &
              t.date.isSmallerOrEqualValue(endOfDay) &
              t.deleted.equals(false))
          ..orderBy([(t) => OrderingTerm(expression: t.createdAt)]))
        .watch()
        .asBroadcastStream();
  }

  @override
  Stream<List<MealLog>> watchRecentFoods({int limit = 30}) {
    return (_db.select(_db.mealLogs)
          ..where((t) =>
              (t.userId.equals(_currentUserId) | t.userId.equals('default_user')) &
              t.deleted.equals(false))
          ..orderBy([
            (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc),
            (t) => OrderingTerm(expression: t.date, mode: OrderingMode.desc),
          ])
          ..limit(250))
        .watch()
        .map((logs) {
          final Map<String, MealLog> distinct = {};
          for (final l in logs) {
            final key = l.foodName.trim().toLowerCase();
            if (!distinct.containsKey(key)) {
              distinct[key] = l;
            }
            if (distinct.length >= limit) break;
          }
          return distinct.values.toList();
        })
        .asBroadcastStream();
  }

  @override
  Future<Target?> getLatestTarget() {
    return (_db.select(_db.targets)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false))
          ..orderBy([(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)])
          ..limit(1))
        .getSingleOrNull();
  }

  @override
  Future<List<FoodSearchResultEntity>> searchFoods(
    String query, {
    String? category,
    String? mealType,
    int limit = 50,
  }) async {
    final cleanQuery = query.trim().toLowerCase();

    final userProfile = await (_db.select(_db.userProfiles)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false))
          ..limit(1))
        .getSingleOrNull();
    final userDiet = (userProfile?.dietType ?? '').toLowerCase();
    final userAllergies = (userProfile?.allergies ?? '').toLowerCase();

    var foods = await (_db.select(_db.foodItems)
          ..where((t) => t.deleted.equals(false)))
        .get();

    // Auto-heal: If database hasn't been seeded yet, seed it and reload
    if (foods.isEmpty) {
      await ensureSeeded();
      foods = await (_db.select(_db.foodItems)
            ..where((t) => t.deleted.equals(false)))
          .get();
    }

    final isCustomCategoryOnly = category == 'Custom' || category == 'Custom Foods';

    final customFoods = await (_db.select(_db.customFoods)
          ..where((t) =>
              (t.userId.equals(_currentUserId) | t.userId.equals('default_user')) &
              t.deleted.equals(false)))
        .get();

    final List<String> searchTerms = [cleanQuery];
    for (final entry in _synonyms.entries) {
      if (cleanQuery.contains(entry.key)) {
        searchTerms.addAll(entry.value);
      }
    }

    final List<FoodSearchResultEntity> results = [];

    int getScore(String name, String? hindiName, String cat, {bool isCustom = false}) {
      if (cleanQuery.isEmpty) return isCustom ? 10 : 1;

      final n = name.toLowerCase();
      final h = (hindiName ?? '').toLowerCase();
      final c = cat.toLowerCase();

      final bonus = isCustom ? 15 : 0;

      if (n == cleanQuery || h == cleanQuery) return 100 + bonus;
      if (n.startsWith(cleanQuery)) return 80 + bonus;
      if (n.contains(cleanQuery) || h.contains(cleanQuery)) return 60 + bonus;

      for (final term in searchTerms) {
        if (n.contains(term) || h.contains(term)) return 40 + bonus;
      }

      if (c.contains(cleanQuery)) return 20 + bonus;

      return 0;
    }

    if (!isCustomCategoryOnly) {
      for (final food in foods) {
        if (category != null && category != 'All' &&
            food.category != category) {
          continue;
        }

        // Dietary filter: If user is vegetarian/vegan/jain, NEVER show non-vegetarian food!
        final dietTags = (food.dietTags ?? '').toLowerCase();
        final nLower = food.name.toLowerCase();
        final catLower = food.category.toLowerCase();

        final isNonVeg = dietTags.contains('non-veg') ||
            catLower.contains('non-veg') ||
            catLower.contains('meat') ||
            catLower.contains('poultry') ||
            catLower.contains('fish') ||
            catLower.contains('seafood') ||
            nLower.contains('chicken') ||
            nLower.contains('fish') ||
            nLower.contains('mutton') ||
            nLower.contains('prawn') ||
            nLower.contains('shrimp') ||
            nLower.contains('pork') ||
            nLower.contains('beef');

        final isEgg = dietTags.contains('egg') ||
            catLower.contains('egg') ||
            nLower.contains('egg') ||
            nLower.contains('omelette') ||
            nLower.contains('bhurji');

        if (userDiet.contains('veg') && !userDiet.contains('non')) {
          if (isNonVeg) continue;
          if (!userDiet.contains('egg') && isEgg) continue;
        }
        if (userDiet.contains('jain')) {
          if (isNonVeg || isEgg) continue;
          if (nLower.contains('onion') ||
              nLower.contains('garlic') ||
              nLower.contains('potato') ||
              nLower.contains('aloo')) {
            continue;
          }
        }
        if (userDiet.contains('vegan')) {
          if (isNonVeg || isEgg) continue;
          if (catLower.contains('dairy') ||
              nLower.contains('milk') ||
              nLower.contains('paneer') ||
              nLower.contains('curd') ||
              nLower.contains('dahi') ||
              nLower.contains('ghee') ||
              nLower.contains('butter') ||
              nLower.contains('cheese')) {
            continue;
          }
        }

        // Allergen filter:
        if (userAllergies.contains('dairy') ||
            userAllergies.contains('lactose')) {
          if (catLower.contains('dairy') ||
              nLower.contains('milk') ||
              nLower.contains('paneer') ||
              nLower.contains('cheese') ||
              nLower.contains('curd') ||
              nLower.contains('dahi') ||
              nLower.contains('ghee') ||
              nLower.contains('butter')) {
            continue;
          }
        }
        if (userAllergies.contains('gluten')) {
          if (catLower.contains('bread') ||
              catLower.contains('grain') ||
              nLower.contains('wheat') ||
              nLower.contains('roti') ||
              nLower.contains('naan') ||
              nLower.contains('paratha') ||
              nLower.contains('puri')) {
            continue;
          }
        }
        if (userAllergies.contains('nut')) {
          if (nLower.contains('nut') ||
              nLower.contains('peanut') ||
              nLower.contains('almond') ||
              nLower.contains('cashew') ||
              nLower.contains('kaju') ||
              nLower.contains('badam')) {
            continue;
          }
        }
        if (userAllergies.contains('egg') && isEgg) {
          continue;
        }
        if (userAllergies.contains('seafood') ||
            userAllergies.contains('fish')) {
          if (catLower.contains('seafood') ||
              catLower.contains('fish') ||
              nLower.contains('fish') ||
              nLower.contains('prawn') ||
              nLower.contains('shrimp')) {
            continue;
          }
        }

        final score = getScore(food.name, food.hindiName, food.category);
        if (score > 0) {
          results.add(FoodSearchResultEntity(
            id: food.id,
            name: food.name,
            hindiName: food.hindiName,
            category: food.category,
            kcalPer100g: food.kcalPer100g,
            proteinPer100g: food.proteinPer100g,
            carbsPer100g: food.carbsPer100g,
            fatPer100g: food.fatPer100g,
            fibrePer100g: food.fibrePer100g,
            sugarPer100g: food.sugarPer100g,
            sodiumPer100g: food.sodiumPer100g,
            source: food.source,
            defaultServingName: 'katori / serving',
            defaultServingGrams: 100.0,
          ));
        }
      }
    }

    for (final custom in customFoods) {
      final score = getScore(custom.name, null, 'Custom', isCustom: true);
      if (score > 0) {
        final servingG = custom.servingSizeGrams > 0 ? custom.servingSizeGrams : 100.0;
        final per100Factor = 100.0 / servingG;
        results.add(FoodSearchResultEntity(
          id: custom.id,
          name: custom.name,
          category: 'Custom Foods',
          kcalPer100g: custom.kcal * per100Factor,
          proteinPer100g: custom.protein * per100Factor,
          carbsPer100g: custom.carbs * per100Factor,
          fatPer100g: custom.fat * per100Factor,
          fibrePer100g: custom.fibre * per100Factor,
          source: 'My Food',
          defaultServingName: 'serving',
          defaultServingGrams: servingG,
          isCustom: true,
        ));
      }
    }

    results.sort((a, b) {
      final scoreA = getScore(a.name, a.hindiName, a.category, isCustom: a.isCustom);
      final scoreB = getScore(b.name, b.hindiName, b.category, isCustom: b.isCustom);
      return scoreB.compareTo(scoreA);
    });

    if (results.length > limit) {
      return results.sublist(0, limit);
    }
    return results;
  }

  @override
  Stream<List<CustomFood>> watchCustomFoods() {
    return (_db.select(_db.customFoods)
          ..where((t) =>
              (t.userId.equals(_currentUserId) | t.userId.equals('default_user')) &
              t.deleted.equals(false))
          ..orderBy([(t) => drift.OrderingTerm.desc(t.createdAt)]))
        .watch();
  }

  @override
  Future<List<CustomFood>> getCustomFoods() {
    return (_db.select(_db.customFoods)
          ..where((t) =>
              (t.userId.equals(_currentUserId) | t.userId.equals('default_user')) &
              t.deleted.equals(false))
          ..orderBy([(t) => drift.OrderingTerm.desc(t.createdAt)]))
        .get();
  }

  @override
  Future<List<FoodUnit>> getFoodUnits(String foodId) {
    return (_db.select(_db.foodUnits)
          ..where((t) => t.foodId.equals(foodId) & t.deleted.equals(false)))
        .get();
  }

  @override
  Future<MealLog> logMeal({
    required String mealType,
    required String foodName,
    required String foodReference,
    required double quantity,
    required String unit,
    required double totalGrams,
    required NutrientSnapshotEntity snapshot,
    DateTime? timestamp,
  }) async {
    final now = timestamp ?? DateTime.now();
    final companion = MealLogsCompanion.insert(
      id: const Uuid().v4(),
      userId: Value(_currentUserId),
      isDirty: const Value(true),
      date: now,
      mealType: mealType,
      foodReference: foodReference,
      foodName: foodName,
      quantity: quantity,
      unit: unit,
      totalGrams: totalGrams,
      computedNutrientsSnapshot: jsonEncode({
        'kcal': snapshot.calories,
        'protein': snapshot.protein,
        'carbs': snapshot.carbs,
        'fat': snapshot.fat,
        'fibre': snapshot.fibre,
      }),
      createdAt: now,
      updatedAt: now,
    );
    await _db.into(_db.mealLogs).insert(companion);
    if (sl.isRegistered<WidgetSyncService>()) {
      unawaited(sl<WidgetSyncService>().syncToNativeWidgets().catchError((_) => false));
    }
    return (_db.select(_db.mealLogs)..where((t) => t.id.equals(companion.id.value))).getSingle();
  }

  @override
  Future<void> deleteMealLog(String id) async {
    await (_db.update(_db.mealLogs)..where((t) => t.id.equals(id) & (t.userId.equals(_currentUserId) | t.userId.equals('default_user')))).write(
      MealLogsCompanion(
        deleted: const Value(true),
        isDirty: const Value(true),
        updatedAt: Value(DateTime.now()),
      ),
    );
    if (sl.isRegistered<WidgetSyncService>()) {
      unawaited(sl<WidgetSyncService>().syncToNativeWidgets().catchError((_) => false));
    }
  }

  @override
  Future<void> restoreMealLog(String id) async {
    await (_db.update(_db.mealLogs)..where((t) => t.id.equals(id) & (t.userId.equals(_currentUserId) | t.userId.equals('default_user')))).write(
      MealLogsCompanion(
        deleted: const Value(false),
        isDirty: const Value(true),
        updatedAt: Value(DateTime.now()),
      ),
    );
    if (sl.isRegistered<WidgetSyncService>()) {
      unawaited(sl<WidgetSyncService>().syncToNativeWidgets().catchError((_) => false));
    }
  }

  @override
  Future<void> copyMealToDate(MealLog meal, DateTime targetDate, {String? targetMealType}) async {
    final now = DateTime.now();
    final copyDate = DateTime(
      targetDate.year,
      targetDate.month,
      targetDate.day,
      meal.date.hour,
      meal.date.minute,
    );

    await _db.into(_db.mealLogs).insert(
      MealLogsCompanion.insert(
        id: const Uuid().v4(),
        userId: Value(_currentUserId),
        isDirty: const Value(true),
        date: copyDate,
        mealType: targetMealType ?? meal.mealType,
        foodReference: meal.foodReference,
        foodName: meal.foodName,
        quantity: meal.quantity,
        unit: meal.unit,
        totalGrams: meal.totalGrams,
        computedNutrientsSnapshot: meal.computedNutrientsSnapshot,
        createdAt: now,
        updatedAt: now,
      ),
    );
  }

  @override
  Future<void> createCustomFood({
    required String name,
    required double servingSizeGrams,
    required double kcal,
    required double protein,
    required double carbs,
    required double fat,
    required double fibre,
    List<Map<String, dynamic>>? ingredients,
  }) async {
    final now = DateTime.now();
    await _db.into(_db.customFoods).insert(
      CustomFoodsCompanion.insert(
        id: const Uuid().v4(),
        userId: Value(_currentUserId),
        isDirty: const Value(true),
        name: name,
        servingSizeGrams: servingSizeGrams,
        kcal: kcal,
        protein: protein,
        carbs: carbs,
        fat: fat,
        fibre: fibre,
        ingredientsJson: Value(ingredients != null ? jsonEncode(ingredients) : null),
        createdAt: now,
        updatedAt: now,
      ),
    );
  }

  @override
  Future<int> ensureSeeded() async {
    final count = await (_db.selectOnly(_db.foodItems)..addColumns([_db.foodItems.id.count()]))
        .map((r) => r.read(_db.foodItems.id.count()) ?? 0)
        .getSingle();
    if (count > 0) return 0;

    final now = DateTime.now();
    final List<FoodItemsCompanion> seedItems = [
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Phulka / Roti',
        hindiName: const Value('फुल्का / रोटी'),
        category: 'Grains & Bread',
        dietTags: const Value('veg'),
        kcalPer100g: 297.0,
        proteinPer100g: 11.0,
        carbsPer100g: 54.0,
        fatPer100g: 3.5,
        fibrePer100g: 10.7,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Chapati',
        hindiName: const Value('चपाती'),
        category: 'Grains & Bread',
        dietTags: const Value('veg'),
        kcalPer100g: 297.0,
        proteinPer100g: 11.0,
        carbsPer100g: 54.0,
        fatPer100g: 3.5,
        fibrePer100g: 10.7,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Plain Paratha',
        hindiName: const Value('पराठा'),
        category: 'Grains & Bread',
        dietTags: const Value('veg'),
        kcalPer100g: 320.0,
        proteinPer100g: 8.0,
        carbsPer100g: 48.0,
        fatPer100g: 12.0,
        fibrePer100g: 6.0,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Aloo Paratha',
        hindiName: const Value('आलू पराठा'),
        category: 'Grains & Bread',
        dietTags: const Value('veg'),
        kcalPer100g: 290.0,
        proteinPer100g: 6.5,
        carbsPer100g: 42.0,
        fatPer100g: 11.0,
        fibrePer100g: 5.0,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Butter Naan',
        hindiName: const Value('बटर नान'),
        category: 'Grains & Bread',
        dietTags: const Value('veg'),
        kcalPer100g: 340.0,
        proteinPer100g: 9.0,
        carbsPer100g: 52.0,
        fatPer100g: 11.5,
        fibrePer100g: 3.0,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Steamed Basmati Rice',
        hindiName: const Value('चावल'),
        category: 'Grains & Bread',
        dietTags: const Value('veg'),
        kcalPer100g: 130.0,
        proteinPer100g: 2.7,
        carbsPer100g: 28.0,
        fatPer100g: 0.3,
        fibrePer100g: 0.4,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Jeera Rice',
        hindiName: const Value('जीरा राइस'),
        category: 'Grains & Bread',
        dietTags: const Value('veg'),
        kcalPer100g: 155.0,
        proteinPer100g: 3.0,
        carbsPer100g: 29.0,
        fatPer100g: 3.5,
        fibrePer100g: 0.8,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Veg Pulao',
        hindiName: const Value('वेज पुलाव'),
        category: 'Grains & Bread',
        dietTags: const Value('veg'),
        kcalPer100g: 160.0,
        proteinPer100g: 3.5,
        carbsPer100g: 30.0,
        fatPer100g: 4.0,
        fibrePer100g: 2.0,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Chicken Biryani',
        hindiName: const Value('चिकन बिरयानी'),
        category: 'Meat & Poultry',
        dietTags: const Value('non-veg'),
        kcalPer100g: 215.0,
        proteinPer100g: 12.5,
        carbsPer100g: 25.0,
        fatPer100g: 8.0,
        fibrePer100g: 1.5,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Veg Biryani',
        hindiName: const Value('वेज बिरयानी'),
        category: 'Grains & Bread',
        dietTags: const Value('veg'),
        kcalPer100g: 175.0,
        proteinPer100g: 4.0,
        carbsPer100g: 29.0,
        fatPer100g: 5.5,
        fibrePer100g: 2.5,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Dal Tadka',
        hindiName: const Value('दाल तड़का'),
        category: 'Curry & Dal',
        dietTags: const Value('veg'),
        kcalPer100g: 120.0,
        proteinPer100g: 6.5,
        carbsPer100g: 16.0,
        fatPer100g: 4.0,
        fibrePer100g: 4.5,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Dal Makhani',
        hindiName: const Value('दाल मखनी'),
        category: 'Curry & Dal',
        dietTags: const Value('veg'),
        kcalPer100g: 160.0,
        proteinPer100g: 6.0,
        carbsPer100g: 18.0,
        fatPer100g: 7.5,
        fibrePer100g: 5.0,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Chana Masala / Chole',
        hindiName: const Value('चना मसाला'),
        category: 'Curry & Dal',
        dietTags: const Value('veg'),
        kcalPer100g: 140.0,
        proteinPer100g: 7.0,
        carbsPer100g: 22.0,
        fatPer100g: 4.0,
        fibrePer100g: 6.0,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Rajma Masala',
        hindiName: const Value('राजमा मसाला'),
        category: 'Curry & Dal',
        dietTags: const Value('veg'),
        kcalPer100g: 135.0,
        proteinPer100g: 6.8,
        carbsPer100g: 21.0,
        fatPer100g: 3.5,
        fibrePer100g: 5.5,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Paneer Butter Masala',
        hindiName: const Value('पनीर बटर मसाला'),
        category: 'Curry & Dal',
        dietTags: const Value('veg'),
        kcalPer100g: 220.0,
        proteinPer100g: 9.0,
        carbsPer100g: 10.0,
        fatPer100g: 17.0,
        fibrePer100g: 2.0,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Palak Paneer',
        hindiName: const Value('पालक पनीर'),
        category: 'Curry & Dal',
        dietTags: const Value('veg'),
        kcalPer100g: 170.0,
        proteinPer100g: 8.5,
        carbsPer100g: 6.0,
        fatPer100g: 13.0,
        fibrePer100g: 3.0,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Kadai Paneer',
        hindiName: const Value('कढ़ाई पनीर'),
        category: 'Curry & Dal',
        dietTags: const Value('veg'),
        kcalPer100g: 195.0,
        proteinPer100g: 9.5,
        carbsPer100g: 8.0,
        fatPer100g: 14.5,
        fibrePer100g: 2.5,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Aloo Gobi',
        hindiName: const Value('आलू गोभी'),
        category: 'Vegetables & Sabzi',
        dietTags: const Value('veg'),
        kcalPer100g: 110.0,
        proteinPer100g: 3.0,
        carbsPer100g: 15.0,
        fatPer100g: 5.0,
        fibrePer100g: 3.5,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Bhindi Masala',
        hindiName: const Value('भिंडी मसाला'),
        category: 'Vegetables & Sabzi',
        dietTags: const Value('veg'),
        kcalPer100g: 95.0,
        proteinPer100g: 2.5,
        carbsPer100g: 11.0,
        fatPer100g: 5.0,
        fibrePer100g: 4.0,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Baingan Bharta',
        hindiName: const Value('बैंगन भरता'),
        category: 'Vegetables & Sabzi',
        dietTags: const Value('veg'),
        kcalPer100g: 85.0,
        proteinPer100g: 2.0,
        carbsPer100g: 9.0,
        fatPer100g: 4.5,
        fibrePer100g: 3.8,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Chicken Curry',
        hindiName: const Value('चिकन करी'),
        category: 'Meat & Poultry',
        dietTags: const Value('non-veg'),
        kcalPer100g: 165.0,
        proteinPer100g: 16.0,
        carbsPer100g: 4.0,
        fatPer100g: 9.5,
        fibrePer100g: 1.0,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Butter Chicken',
        hindiName: const Value('बटर चिकन'),
        category: 'Meat & Poultry',
        dietTags: const Value('non-veg'),
        kcalPer100g: 230.0,
        proteinPer100g: 15.0,
        carbsPer100g: 8.0,
        fatPer100g: 16.0,
        fibrePer100g: 1.2,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Fish Curry',
        hindiName: const Value('फिश करी'),
        category: 'Fish & Seafood',
        dietTags: const Value('non-veg'),
        kcalPer100g: 145.0,
        proteinPer100g: 15.5,
        carbsPer100g: 3.5,
        fatPer100g: 8.0,
        fibrePer100g: 0.8,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Egg Bhurji',
        hindiName: const Value('अंडा भुर्जी'),
        category: 'Eggs & Omelettes',
        dietTags: const Value('egg'),
        kcalPer100g: 175.0,
        proteinPer100g: 12.0,
        carbsPer100g: 3.0,
        fatPer100g: 13.0,
        fibrePer100g: 0.5,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Boiled Egg',
        hindiName: const Value('उबला अंडा'),
        category: 'Eggs & Omelettes',
        dietTags: const Value('egg'),
        kcalPer100g: 155.0,
        proteinPer100g: 13.0,
        carbsPer100g: 1.1,
        fatPer100g: 10.6,
        fibrePer100g: 0.0,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Masala Chai',
        hindiName: const Value('मसाला चाय'),
        category: 'Beverages',
        dietTags: const Value('veg'),
        kcalPer100g: 60.0,
        proteinPer100g: 2.0,
        carbsPer100g: 9.0,
        fatPer100g: 2.0,
        fibrePer100g: 0.0,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Curd / Dahi',
        hindiName: const Value('दही'),
        category: 'Dairy',
        dietTags: const Value('veg'),
        kcalPer100g: 60.0,
        proteinPer100g: 3.5,
        carbsPer100g: 4.7,
        fatPer100g: 3.2,
        fibrePer100g: 0.0,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Poha',
        hindiName: const Value('पोहा'),
        category: 'Snacks & Breakfast',
        dietTags: const Value('veg'),
        kcalPer100g: 180.0,
        proteinPer100g: 3.5,
        carbsPer100g: 32.0,
        fatPer100g: 4.5,
        fibrePer100g: 2.5,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Idli',
        hindiName: const Value('इडली'),
        category: 'Snacks & Breakfast',
        dietTags: const Value('veg'),
        kcalPer100g: 140.0,
        proteinPer100g: 4.0,
        carbsPer100g: 28.0,
        fatPer100g: 0.8,
        fibrePer100g: 1.5,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Plain Dosa',
        hindiName: const Value('डोसा'),
        category: 'Snacks & Breakfast',
        dietTags: const Value('veg'),
        kcalPer100g: 200.0,
        proteinPer100g: 4.5,
        carbsPer100g: 36.0,
        fatPer100g: 4.0,
        fibrePer100g: 2.0,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Vegetable Samosa',
        hindiName: const Value('समोसा'),
        category: 'Snacks & Breakfast',
        dietTags: const Value('veg'),
        kcalPer100g: 260.0,
        proteinPer100g: 4.0,
        carbsPer100g: 32.0,
        fatPer100g: 13.0,
        fibrePer100g: 3.0,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Fresh Apple',
        hindiName: const Value('सेब'),
        category: 'Fruits',
        dietTags: const Value('veg'),
        kcalPer100g: 52.0,
        proteinPer100g: 0.3,
        carbsPer100g: 13.8,
        fatPer100g: 0.2,
        fibrePer100g: 2.4,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Ripe Banana',
        hindiName: const Value('केला'),
        category: 'Fruits',
        dietTags: const Value('veg'),
        kcalPer100g: 89.0,
        proteinPer100g: 1.1,
        carbsPer100g: 22.8,
        fatPer100g: 0.3,
        fibrePer100g: 2.6,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
      FoodItemsCompanion.insert(
        id: const Uuid().v4(),
        name: 'Sweet Mango',
        hindiName: const Value('आम'),
        category: 'Fruits',
        dietTags: const Value('veg'),
        kcalPer100g: 60.0,
        proteinPer100g: 0.8,
        carbsPer100g: 15.0,
        fatPer100g: 0.4,
        fibrePer100g: 1.6,
        source: 'local_seed',
        createdAt: now,
        updatedAt: now,
      ),
    ];

    for (final item in seedItems) {
      await _db.into(_db.foodItems).insertOnConflictUpdate(item);
    }
    return seedItems.length;
  }
}

