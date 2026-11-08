import 'package:bloomi/core/utils/health_calculators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HealthCalculators - BMR Mifflin-St Jeor', () {
    test('Calculates male BMR accurately', () {
      // 70 kg, 175 cm, 30 years male
      // BMR = 10 * 70 + 6.25 * 175 - 5 * 30 + 5 = 700 + 1093.75 - 150 + 5 = 1648.75
      final bmr = HealthCalculators.calculateBMR(
        weightKg: 70,
        heightCm: 175,
        age: 30,
        gender: Gender.male,
      );
      expect(bmr, closeTo(1648.75, 0.01));
    });

    test('Calculates female BMR accurately', () {
      // 60 kg, 160 cm, 25 years female
      // BMR = 10 * 60 + 6.25 * 160 - 5 * 25 - 161 = 600 + 1000 - 125 - 161 = 1314.0
      final bmr = HealthCalculators.calculateBMR(
        weightKg: 60,
        heightCm: 160,
        age: 25,
        gender: Gender.female,
      );
      expect(bmr, closeTo(1314.0, 0.01));
    });

    test('Calculates other gender BMR as average of male and female', () {
      final male = HealthCalculators.calculateBMR(
        weightKg: 65,
        heightCm: 168,
        age: 28,
        gender: Gender.male,
      );
      final female = HealthCalculators.calculateBMR(
        weightKg: 65,
        heightCm: 168,
        age: 28,
        gender: Gender.female,
      );
      final other = HealthCalculators.calculateBMR(
        weightKg: 65,
        heightCm: 168,
        age: 28,
        gender: Gender.other,
      );
      expect(other, closeTo((male + female) / 2.0, 0.01));
    });
  });

  group('HealthCalculators - TDEE and Activity Factors', () {
    test('Multiplies BMR by activity factor', () {
      const bmr = 1500.0;
      expect(HealthCalculators.calculateTDEE(bmr: bmr, activityLevel: ActivityLevel.sedentary), 1800.0);
      expect(HealthCalculators.calculateTDEE(bmr: bmr, activityLevel: ActivityLevel.light), 2062.5);
      expect(HealthCalculators.calculateTDEE(bmr: bmr, activityLevel: ActivityLevel.moderate), 2325.0);
      expect(HealthCalculators.calculateTDEE(bmr: bmr, activityLevel: ActivityLevel.veryActive), 2587.5);
      expect(HealthCalculators.calculateTDEE(bmr: bmr, activityLevel: ActivityLevel.athlete), 2850.0);
    });
  });

  group('HealthCalculators - Calorie Floors', () {
    test('Enforces strictly minimum 1200 kcal floor for female', () {
      // TDEE is 1400 kcal, standard loss is -500 kcal -> would be 900 kcal without floor
      final target = HealthCalculators.calculateTargetCalories(
        tdee: 1400,
        goal: HealthGoal.loseStandard,
        gender: Gender.female,
      );
      expect(target, 1200.0);
    });

    test('Enforces strictly minimum 1500 kcal floor for male', () {
      // TDEE is 1800 kcal, standard loss is -500 kcal -> would be 1300 kcal without floor
      final target = HealthCalculators.calculateTargetCalories(
        tdee: 1800,
        goal: HealthGoal.loseStandard,
        gender: Gender.male,
      );
      expect(target, 1500.0);
    });

    test('Enforces strictly minimum 1200 kcal floor for other', () {
      final target = HealthCalculators.calculateTargetCalories(
        tdee: 1300,
        goal: HealthGoal.loseStandard,
        gender: Gender.other,
      );
      expect(target, 1200.0);
    });
  });

  group('HealthCalculators - Macronutrients & Water', () {
    test('Calculates macros correctly', () {
      // 2000 kcal target, 70 kg, losing weight (1.2g/kg protein)
      final macros = HealthCalculators.calculateMacros(
        targetCalories: 2000,
        weightKg: 70,
        goal: HealthGoal.loseStandard,
      );

      // Protein: 70 * 1.2 = 84g (336 kcal)
      expect(macros.proteinGrams, 84.0);

      // Fat: 25% of 2000 kcal = 500 kcal / 9 = ~55.55g
      expect(macros.fatGrams, closeTo(55.55, 0.1));

      // Carbs: (2000 - 336 - 500) = 1164 kcal / 4 = 291g
      expect(macros.carbsGrams, 291.0);

      // Fibre: 14g per 1000 kcal = 28g
      expect(macros.fibreGrams, 28.0);
    });

    test('Calculates water at 33 ml per kg and adds heat bonus', () {
      expect(HealthCalculators.calculateWaterMl(weightKg: 70), 2310.0);
      expect(HealthCalculators.calculateWaterMl(weightKg: 70, isHotDay: true), 2660.0);
    });

    test('Calculates BMI accurately', () {
      // 70 kg, 175 cm (1.75 m) -> 70 / (1.75^2) = 22.86
      final bmi = HealthCalculators.calculateBMI(weightKg: 70, heightCm: 175);
      expect(bmi, closeTo(22.86, 0.01));
    });

    test('Calculates age from date of birth correctly', () {
      final now = DateTime(2026, 11, 1);
      final dob1 = DateTime(2000, 5, 15);
      expect(HealthCalculators.calculateAge(dob1, now), 26);

      final dobUnder18 = DateTime(2010, 5, 15);
      expect(HealthCalculators.calculateAge(dobUnder18, now), 16);
    });
  });

  group('HealthCalculators - Dynamic Distance Formatting', () {
    test('Formats distance under 1000 meters in meters (m)', () {
      expect(HealthCalculators.formatDistance(0), '0 m');
      expect(HealthCalculators.formatDistance(50), '50 m');
      expect(HealthCalculators.formatDistance(450.4), '450 m');
      expect(HealthCalculators.formatDistance(999), '999 m');
    });

    test('Formats distance 1000 meters or above in kilometers (km)', () {
      expect(HealthCalculators.formatDistance(1000), '1.0 km');
      expect(HealthCalculators.formatDistance(1250), '1.3 km');
      expect(HealthCalculators.formatDistance(4800), '4.8 km');
      expect(HealthCalculators.formatDistance(10500), '10.5 km');
    });

    test('getDistanceComponents provides separated value and unit', () {
      final under1km = HealthCalculators.getDistanceComponents(750);
      expect(under1km.value, '750');
      expect(under1km.unit, 'm');

      final over1km = HealthCalculators.getDistanceComponents(2400);
      expect(over1km.value, '2.4');
      expect(over1km.unit, 'km');
    });
  });
}

