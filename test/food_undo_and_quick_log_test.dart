import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/food/data/local/food_local_data_source.dart';
import 'package:bloomi/features/food/domain/entities/nutrient_snapshot_entity.dart';
import 'package:bloomi/features/home/presentation/widgets/quick_add_sheet.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AppDatabase db;
  late FoodLocalDataSource localDataSource;

  setUp(() {
    db = AppDatabase(NativeDatabase.memory());
    localDataSource = FoodLocalDataSourceImpl(
      db,
      userIdProvider: () => 'test_user',
    );
  });

  tearDown(() async {
    await db.close();
  });

  group('Food Diary Deletion and Undo Tests', () {
    test('Deleting a meal marks deleted: true, and restoring marks deleted: false', () async {
      // 1. Log a meal
      final meal = await localDataSource.logMeal(
        mealType: 'lunch',
        foodName: 'Brown Rice Bowl',
        foodReference: 'custom_rice',
        quantity: 1,
        unit: 'bowl',
        totalGrams: 200,
        snapshot: const NutrientSnapshotEntity(
          calories: 220,
          protein: 5,
          carbs: 45,
          fat: 2,
          fibre: 3,
        ),
      );

      // Verify meal is present
      var meals = await localDataSource.watchMealsForDate(meal.date).first;
      expect(meals.any((m) => m.id == meal.id), isTrue);

      // 2. Delete meal
      await localDataSource.deleteMealLog(meal.id);
      meals = await localDataSource.watchMealsForDate(meal.date).first;
      expect(meals.any((m) => m.id == meal.id), isFalse);

      // 3. Undo / Restore meal
      await localDataSource.restoreMealLog(meal.id);
      meals = await localDataSource.watchMealsForDate(meal.date).first;
      expect(meals.any((m) => m.id == meal.id), isTrue);
    });
  });

  group('QuickAddSheet UI Tests', () {
    testWidgets('QuickAddSheet renders 4 food logging tiles and does NOT show Log Weight or Log Workout buttons', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: QuickAddSheet(),
          ),
        ),
      );
      await tester.pumpAndSettle();

      // Core 4 actions must exist
      expect(find.text('Search Food'), findsOneWidget);
      expect(find.text('Scan Barcode 👑'), findsOneWidget);
      expect(find.text('Add Water'), findsOneWidget);
      expect(find.text('Custom Food'), findsOneWidget);

      // Removed actions must NOT exist
      expect(find.text('Log Weight'), findsNothing);
      expect(find.text('Log Workout'), findsNothing);
    });
  });
}
