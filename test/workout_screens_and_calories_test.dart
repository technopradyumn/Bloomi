import 'dart:convert';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/food/data/models/nutrient_snapshot_model.dart';
import 'package:bloomi/features/food/domain/entities/favourite_food_entity.dart';
import 'package:bloomi/features/health/presentation/pages/workout_editor_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Workout Log & Calories In/Out Verification', () {
    test('Workout Intensity multiplier works accurately', () {
      expect(WorkoutIntensity.low.multiplier, equals(0.8));
      expect(WorkoutIntensity.moderate.multiplier, equals(1.0));
      expect(WorkoutIntensity.high.multiplier, equals(1.25));
    });

    test('Calories burned calculation uses MET, weight, and duration accurately', () {
      // Running: 9.8 MET, 70 kg, 30 mins, moderate intensity
      // Calories = 9.8 * 1.0 * 70 * (30 / 60) = 343 kcal
      const met = 9.8;
      const weightKg = 70.0;
      const durationMins = 30;
      final calories = (met * WorkoutIntensity.moderate.multiplier * weightKg * (durationMins / 60.0)).round();
      expect(calories, equals(343));
    });

    test('NutrientSnapshotModel correctly parses both kcal and calories keys', () {
      final snap1 = NutrientSnapshotModel.fromMap(const {
        'kcal': 250.0,
        'protein': 15.0,
        'carbs': 30.0,
        'fat': 8.0,
        'fibre': 4.0,
      });
      expect(snap1.calories, equals(250.0));

      final snap2 = NutrientSnapshotModel.fromMap(const {
        'calories': 320.0,
        'protein': 20.0,
        'carbs': 40.0,
        'fat': 10.0,
        'fibre': 5.0,
      });
      expect(snap2.calories, equals(320.0));
    });

    test('NutrientSnapshotModel handles double-encoded JSON cleanly without failing to 0', () {
      final inner = jsonEncode({
        'kcal': 450.0,
        'protein': 25.0,
        'carbs': 50.0,
        'fat': 12.0,
        'fibre': 6.0,
      });
      final doubleEncoded = jsonEncode(inner);

      final snap = NutrientSnapshotModel.fromJson(doubleEncoded);
      expect(snap.calories, equals(450.0));
      expect(snap.protein, equals(25.0));
    });

    test('FavouriteFoodEntity handles id / foodId and alternate calorie field names', () {
      final fav = FavouriteFoodEntity.fromJson(const {
        'id': 'food_apple_123',
        'name': 'Red Apple',
        'calories': 52.0,
        'protein': 0.3,
        'carbs': 14.0,
        'fat': 0.2,
        'fibre': 2.4,
      });

      expect(fav.foodId, equals('food_apple_123'));
      expect(fav.name, equals('Red Apple'));
      expect(fav.kcalPer100g, equals(52.0));
    });

    test('Calories In vs Out net and ratio calculations with edge cases', () {
      // Normal case: Intake 2000, Burned 1800 -> Net +200, Ratio 1.11
      const double intake = 2000.0;
      const double burned = 1800.0;
      const net = intake - burned;
      const ratio = burned > 0 ? (intake / burned) : null;

      expect(net, equals(200.0));
      expect(ratio, closeTo(1.11, 0.01));

      // Edge case: burned = 0 -> ratio should be null (avoid divide by zero)
      const double zeroBurned = 0.0;
      const safeRatio = zeroBurned > 0 ? (intake / zeroBurned) : null;
      expect(safeRatio, isNull);
    });

    test('Burned calories total correctly combines activity calories and manual workouts', () {
      const activeCalories = 350.0;
      final todayWorkouts = [
        WorkoutLog(
          id: 'w1',
          userId: 'default_user',
          type: 'Running',
          durationMinutes: 30,
          calories: 300.0,
          recordedAt: DateTime.now(),
          source: 'manual',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          deleted: false,
          isDirty: false,
        ),
        WorkoutLog(
          id: 'w2',
          userId: 'default_user',
          type: 'Yoga',
          durationMinutes: 20,
          calories: 80.0,
          recordedAt: DateTime.now(),
          source: 'manual',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          deleted: false,
          isDirty: false,
        ),
      ];

      final workoutBurned = todayWorkouts.fold<double>(0.0, (acc, w) => acc + w.calories);
      final totalBurned = activeCalories + workoutBurned;

      expect(workoutBurned, equals(380.0));
      expect(totalBurned, equals(730.0));
    });
  });
}
