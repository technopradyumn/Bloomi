part of 'onboarding_bloc.dart';

abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object?> get props => [];
}

class OnboardingInitialized extends OnboardingEvent {
  const OnboardingInitialized([this.initialName]);
  final String? initialName;

  @override
  List<Object?> get props => [initialName];
}

class OnboardingLoadExistingRequested extends OnboardingEvent {
  const OnboardingLoadExistingRequested([this.userId]);
  final String? userId;

  @override
  List<Object?> get props => [userId];
}

class OnboardingNameUpdated extends OnboardingEvent {
  const OnboardingNameUpdated(this.name);
  final String name;

  @override
  List<Object?> get props => [name];
}

class OnboardingGenderUpdated extends OnboardingEvent {
  const OnboardingGenderUpdated(this.gender);
  final Gender gender;

  @override
  List<Object?> get props => [gender];
}

class OnboardingBirthDateUpdated extends OnboardingEvent {
  const OnboardingBirthDateUpdated(this.birthDate);
  final DateTime birthDate;

  @override
  List<Object?> get props => [birthDate];
}

class OnboardingHeightUpdated extends OnboardingEvent {
  const OnboardingHeightUpdated(this.heightCm);
  final double heightCm;

  @override
  List<Object?> get props => [heightCm];
}

class OnboardingWeightUpdated extends OnboardingEvent {
  const OnboardingWeightUpdated(this.weightKg);
  final double weightKg;

  @override
  List<Object?> get props => [weightKg];
}

class OnboardingTargetWeightUpdated extends OnboardingEvent {
  const OnboardingTargetWeightUpdated(this.targetWeightKg);
  final double targetWeightKg;

  @override
  List<Object?> get props => [targetWeightKg];
}

class OnboardingUnitsUpdated extends OnboardingEvent {
  const OnboardingUnitsUpdated(this.isMetric);
  final bool isMetric;

  @override
  List<Object?> get props => [isMetric];
}

class OnboardingGoalUpdated extends OnboardingEvent {
  const OnboardingGoalUpdated(this.goal);
  final HealthGoal goal;

  @override
  List<Object?> get props => [goal];
}

class OnboardingActivityUpdated extends OnboardingEvent {
  const OnboardingActivityUpdated(this.activityLevel);
  final ActivityLevel activityLevel;

  @override
  List<Object?> get props => [activityLevel];
}

class OnboardingDietTypeUpdated extends OnboardingEvent {
  const OnboardingDietTypeUpdated(this.dietType);
  final String dietType;

  @override
  List<Object?> get props => [dietType];
}

class OnboardingAllergiesUpdated extends OnboardingEvent {
  const OnboardingAllergiesUpdated(this.allergies);
  final Set<String> allergies;

  @override
  List<Object?> get props => [allergies];
}

class OnboardingDisclaimerAcceptedUpdated extends OnboardingEvent {
  const OnboardingDisclaimerAcceptedUpdated(this.accepted);
  final bool accepted;

  @override
  List<Object?> get props => [accepted];
}

class OnboardingSaveAndCompleteRequested extends OnboardingEvent {
  const OnboardingSaveAndCompleteRequested([this.userId]);
  final String? userId;

  @override
  List<Object?> get props => [userId];
}
