import 'package:bloomi/core/utils/health_calculators.dart';
import 'package:equatable/equatable.dart';

class OnboardingProfileEntity extends Equatable {
  const OnboardingProfileEntity({
    this.name = '',
    this.gender = Gender.female,
    this.birthDate,
    this.heightCm = 165.0,
    this.weightKg = 65.0,
    this.targetWeightKg = 60.0,
    this.isMetric = true,
    this.goal = HealthGoal.maintain,
    this.activityLevel = ActivityLevel.light,
    this.dietType = 'Vegetarian',
    this.allergies = const <String>{},
    this.isDisclaimerAccepted = false,
  });

  final String name;
  final Gender gender;
  final DateTime? birthDate;
  final double heightCm;
  final double weightKg;
  final double targetWeightKg;
  final bool isMetric;
  final HealthGoal goal;
  final ActivityLevel activityLevel;
  final String dietType;
  final Set<String> allergies;
  final bool isDisclaimerAccepted;

  int get age => birthDate != null ? HealthCalculators.calculateAge(birthDate!) : 25;

  DailyPlanTargets get computedPlan => HealthCalculators.computeFullPlan(
        weightKg: weightKg,
        heightCm: heightCm,
        age: age,
        gender: gender,
        activityLevel: activityLevel,
        goal: goal,
      );

  OnboardingProfileEntity copyWith({
    String? name,
    Gender? gender,
    DateTime? birthDate,
    double? heightCm,
    double? weightKg,
    double? targetWeightKg,
    bool? isMetric,
    HealthGoal? goal,
    ActivityLevel? activityLevel,
    String? dietType,
    Set<String>? allergies,
    bool? isDisclaimerAccepted,
  }) {
    return OnboardingProfileEntity(
      name: name ?? this.name,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      heightCm: heightCm ?? this.heightCm,
      weightKg: weightKg ?? this.weightKg,
      targetWeightKg: targetWeightKg ?? this.targetWeightKg,
      isMetric: isMetric ?? this.isMetric,
      goal: goal ?? this.goal,
      activityLevel: activityLevel ?? this.activityLevel,
      dietType: dietType ?? this.dietType,
      allergies: allergies ?? this.allergies,
      isDisclaimerAccepted: isDisclaimerAccepted ?? this.isDisclaimerAccepted,
    );
  }

  @override
  List<Object?> get props => [
        name,
        gender,
        birthDate,
        heightCm,
        weightKg,
        targetWeightKg,
        isMetric,
        goal,
        activityLevel,
        dietType,
        allergies,
        isDisclaimerAccepted,
      ];
}

