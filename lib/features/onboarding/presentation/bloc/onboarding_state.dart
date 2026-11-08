part of 'onboarding_bloc.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState(this.profile);
  final OnboardingProfileEntity profile;

  @override
  List<Object?> get props => [profile];
}

class OnboardingInitialState extends OnboardingState {
  const OnboardingInitialState() : super(const OnboardingProfileEntity());
}

class OnboardingLoadedState extends OnboardingState {
  const OnboardingLoadedState(super.profile);
}

class OnboardingSubmittingState extends OnboardingState {
  const OnboardingSubmittingState(super.profile);
}

class OnboardingSuccessState extends OnboardingState {
  const OnboardingSuccessState(super.profile);
}

class OnboardingFailureState extends OnboardingState {
  const OnboardingFailureState(super.profile, this.errorMessage);
  final String errorMessage;

  @override
  List<Object?> get props => [profile, errorMessage];
}

