import 'package:bloomi/core/database/app_database.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AppDatabase db;

  setUp(() {
    db = AppDatabase(NativeDatabase.memory());
  });

  tearDown(() async {
    await db.close();
  });

  test('Database opens and all tables exist', () async {
    // Test inserting and selecting user profile
    final now = DateTime.now();
    await db.into(db.userProfiles).insert(
      UserProfilesCompanion.insert(
        id: 'test-user-1',
        name: 'Test Bloomi User',
        createdAt: now,
        updatedAt: now,
      ),
    );

    final profiles = await db.select(db.userProfiles).get();
    expect(profiles.length, 1);
    expect(profiles.first.name, 'Test Bloomi User');

    // Test targets table
    await db.into(db.targets).insert(
      TargetsCompanion.insert(
        id: 'target-1',
        calories: 1800,
        protein: 70,
        carbs: 220,
        fat: 50,
        fibre: 25,
        waterMl: 2500,
        steps: 8000,
        sleepHours: 8,
        createdAt: now,
        updatedAt: now,
      ),
    );
    final targets = await db.select(db.targets).get();
    expect(targets.length, 1);
    expect(targets.first.calories, 1800);

    // Test meal logs table
    await db.into(db.mealLogs).insert(
      MealLogsCompanion.insert(
        id: 'meal-1',
        date: now,
        mealType: 'breakfast',
        foodReference: 'food-1',
        foodName: 'Oats with Almond Milk',
        quantity: 1,
        unit: 'bowl',
        totalGrams: 250,
        computedNutrientsSnapshot: '{"kcal":280,"protein":8}',
        createdAt: now,
        updatedAt: now,
      ),
    );
    final meals = await db.select(db.mealLogs).get();
    expect(meals.length, 1);
    expect(meals.first.foodName, 'Oats with Almond Milk');

    // Test water logs table
    await db.into(db.waterLogs).insert(
      WaterLogsCompanion.insert(
        id: 'water-1',
        date: now,
        ml: 250,
        createdAt: now,
        updatedAt: now,
      ),
    );
    final water = await db.select(db.waterLogs).get();
    expect(water.length, 1);
    expect(water.first.ml, 250);
  });

  test('clearUserScopedData removes all user records for account switching', () async {
    final now = DateTime.now();
    await db.into(db.userProfiles).insert(
      UserProfilesCompanion.insert(
        id: 'user-id-1',
        name: 'User One',
        createdAt: now,
        updatedAt: now,
      ),
    );
    await db.into(db.mealLogs).insert(
      MealLogsCompanion.insert(
        id: 'meal-user-1',
        date: now,
        mealType: 'lunch',
        foodReference: 'ref-1',
        foodName: 'Salad',
        quantity: 1,
        unit: 'bowl',
        totalGrams: 200,
        computedNutrientsSnapshot: '{}',
        createdAt: now,
        updatedAt: now,
      ),
    );

    // Verify records exist
    expect((await db.select(db.userProfiles).get()).length, 1);
    expect((await db.select(db.mealLogs).get()).length, 1);

    // Call user data cleanup (as executed on sign out or user switch)
    await db.clearUserScopedData();

    // Verify completely clean for user 2
    expect((await db.select(db.userProfiles).get()).isEmpty, isTrue);
    expect((await db.select(db.mealLogs).get()).isEmpty, isTrue);
    expect((await db.select(db.targets).get()).isEmpty, isTrue);
    expect((await db.select(db.waterLogs).get()).isEmpty, isTrue);
  });
}

