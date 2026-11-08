import 'dart:math' as math;

enum Gender {
  male,
  female,
  other,
}

enum ActivityLevel {
  sedentary(1.2, 'Sedentary (desk job, little exercise)'),
  light(1.375, 'Lightly active (light exercise 1-3 days/wk)'),
  moderate(1.55, 'Moderately active (exercise 3-5 days/wk)'),
  veryActive(1.725, 'Very active (hard exercise 6-7 days/wk)'),
  athlete(1.9, 'Athlete / physical labor (2x training/day)');

  const ActivityLevel(this.factor, this.description);
  final double factor;
  final String description;
}

enum HealthGoal {
  loseGently(-300, 'Lose weight gently (~0.25-0.3 kg/week)'),
  loseStandard(-500, 'Standard weight loss (~0.5 kg/week)'),
  maintain(0, 'Stay healthy & maintain current weight'),
  gainGentle(250, 'Gentle weight gain (~0.25 kg/week)'),
  gainMuscle(400, 'Build muscle & strength (~0.4 kg/week)');

  const HealthGoal(this.calorieAdjustment, this.description);
  final int calorieAdjustment;
  final String description;
}

class MacroTargets {
  const MacroTargets({
    required this.calories,
    required this.proteinGrams,
    required this.carbsGrams,
    required this.fatGrams,
    required this.fibreGrams,
  });

  final double calories;
  final double proteinGrams;
  final double carbsGrams;
  final double fatGrams;
  final double fibreGrams;
}

class DailyPlanTargets {
  const DailyPlanTargets({
    required this.bmr,
    required this.tdee,
    required this.macros,
    required this.waterMl,
    required this.steps,
    required this.sleepHours,
    required this.bmi,
  });

  final double bmr;
  final double tdee;
  final MacroTargets macros;
  final double waterMl;
  final int steps;
  final double sleepHours;
  final double bmi;
}

abstract final class HealthCalculators {
  static const double minCalorieFloorFemale = 1200.0;
  static const double minCalorieFloorMale = 1500.0;
  static const double minCalorieFloorOther = 1200.0;

  /// Calculates Basal Metabolic Rate using the Mifflin-St Jeor equation.
  /// Male: 10 * kg + 6.25 * cm - 5 * age + 5
  /// Female: 10 * kg + 6.25 * cm - 5 * age - 161
  /// Other: Average of Male and Female
  static double calculateBMR({
    required double weightKg,
    required double heightCm,
    required int age,
    required Gender gender,
  }) {
    final base = (10.0 * weightKg) + (6.25 * heightCm) - (5.0 * age);
    switch (gender) {
      case Gender.male:
        return base + 5.0;
      case Gender.female:
        return base - 161.0;
      case Gender.other:
        final male = base + 5.0;
        final female = base - 161.0;
        return (male + female) / 2.0;
    }
  }

  /// Calculates Total Daily Energy Expenditure (TDEE).
  static double calculateTDEE({
    required double bmr,
    required ActivityLevel activityLevel,
  }) {
    return bmr * activityLevel.factor;
  }

  /// Calculates target calories respecting the non-negotiable health calorie floors.
  static double calculateTargetCalories({
    required double tdee,
    required HealthGoal goal,
    required Gender gender,
  }) {
    final rawCalories = tdee + goal.calorieAdjustment;
    final floor = getCalorieFloor(gender);
    return math.max(rawCalories, floor);
  }

  /// Non-negotiable floor: Never suggest below 1200 kcal (female/other) or 1500 kcal (male).
  static double getCalorieFloor(Gender gender) {
    switch (gender) {
      case Gender.male:
        return minCalorieFloorMale;
      case Gender.female:
        return minCalorieFloorFemale;
      case Gender.other:
        return minCalorieFloorOther;
    }
  }

  /// Calculates macronutrient targets:
  /// - Protein: 1.0 g/kg (default/maintain), 1.2 g/kg (losing), 1.4 g/kg (muscle gain)
  /// - Fat: 25% of calories (9 kcal/g)
  /// - Carbs: Remaining calories (4 kcal/g)
  /// - Fibre: 14g per 1000 kcal
  static MacroTargets calculateMacros({
    required double targetCalories,
    required double weightKg,
    required HealthGoal goal,
  }) {
    // 1. Protein grams
    double proteinMultiplier;
    switch (goal) {
      case HealthGoal.loseGently:
      case HealthGoal.loseStandard:
        proteinMultiplier = 1.2;
      case HealthGoal.gainMuscle:
        proteinMultiplier = 1.4;
      case HealthGoal.maintain:
      case HealthGoal.gainGentle:
        proteinMultiplier = 1.0;
    }
    final proteinGrams = weightKg * proteinMultiplier;
    final proteinCalories = proteinGrams * 4.0;

    // 2. Fat grams (25% of total calories)
    final fatCalories = targetCalories * 0.25;
    final fatGrams = fatCalories / 9.0;

    // 3. Carbohydrates (remainder of calories)
    final carbsCalories = math.max(0.0, targetCalories - proteinCalories - fatCalories);
    final carbsGrams = carbsCalories / 4.0;

    // 4. Dietary Fibre (14g per 1000 kcal)
    final fibreGrams = (targetCalories / 1000.0) * 14.0;

    return MacroTargets(
      calories: targetCalories,
      proteinGrams: proteinGrams,
      carbsGrams: carbsGrams,
      fatGrams: fatGrams,
      fibreGrams: fibreGrams,
    );
  }

  /// Daily water in ml: 33 ml per kg of body weight.
  static double calculateWaterMl({
    required double weightKg,
    bool isHotDay = false,
  }) {
    final base = weightKg * 33.0;
    return base + (isHotDay ? 350.0 : 0.0);
  }

  /// BMI = kg / (m * m)
  static double calculateBMI({
    required double weightKg,
    required double heightCm,
  }) {
    final heightMeters = heightCm / 100.0;
    if (heightMeters <= 0) return 0.0;
    return weightKg / (heightMeters * heightMeters);
  }

  /// Full plan calculation combining all formulas.
  static DailyPlanTargets computeFullPlan({
    required double weightKg,
    required double heightCm,
    required int age,
    required Gender gender,
    required ActivityLevel activityLevel,
    required HealthGoal goal,
  }) {
    final bmr = calculateBMR(
      weightKg: weightKg,
      heightCm: heightCm,
      age: age,
      gender: gender,
    );
    final tdee = calculateTDEE(bmr: bmr, activityLevel: activityLevel);
    final targetCalories = calculateTargetCalories(
      tdee: tdee,
      goal: goal,
      gender: gender,
    );
    final macros = calculateMacros(
      targetCalories: targetCalories,
      weightKg: weightKg,
      goal: goal,
    );
    final waterMl = calculateWaterMl(weightKg: weightKg);
    final bmi = calculateBMI(weightKg: weightKg, heightCm: heightCm);

    return DailyPlanTargets(
      bmr: bmr,
      tdee: tdee,
      macros: macros,
      waterMl: waterMl,
      steps: 10000,
      sleepHours: 8.0,
      bmi: bmi,
    );
  }

  /// Helper to calculate age from birth date
  static int calculateAge(DateTime birthDate, [DateTime? currentDate]) {
    final today = currentDate ?? DateTime.now();
    int age = today.year - birthDate.year;
    if (today.month < birthDate.month ||
        (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }
    return age;
  }

  /// Calculates personalized calorie target for a specific goal using the Mifflin-St Jeor formula
  static int getPersonalizedTargetCalories({
    required double weightKg,
    required double heightCm,
    required int age,
    required Gender gender,
    required ActivityLevel activityLevel,
    required HealthGoal goal,
  }) {
    final bmr = calculateBMR(
      weightKg: weightKg,
      heightCm: heightCm,
      age: age,
      gender: gender,
    );
    final tdee = calculateTDEE(bmr: bmr, activityLevel: activityLevel);
    final target = calculateTargetCalories(
      tdee: tdee,
      goal: goal,
      gender: gender,
    );
    return target.round();
  }

  /// Formats distance dynamically:
  /// - Under 1 km (< 1000 meters): shows in meters, e.g. "450 m"
  /// - 1 km or more (>= 1000 meters): shows in km, e.g. "1.2 km"
  static String formatDistance(double meters) {
    if (meters < 1000.0) {
      return '${meters.round()} m';
    } else {
      final km = meters / 1000.0;
      return '${km.toStringAsFixed(1)} km';
    }
  }

  /// Returns unit ('m' or 'km') and numeric value string for distance
  static ({String value, String unit}) getDistanceComponents(double meters) {
    if (meters < 1000.0) {
      return (value: '${meters.round()}', unit: 'm');
    } else {
      final km = meters / 1000.0;
      return (value: km.toStringAsFixed(1), unit: 'km');
    }
  }
}

