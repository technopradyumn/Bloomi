import 'package:bloomi/core/utils/health_calculators.dart';
import 'package:bloomi/features/onboarding/domain/entities/onboarding_profile_entity.dart';
import 'package:bloomi/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc({required OnboardingRepository onboardingRepository})
      : _onboardingRepository = onboardingRepository,
        super(const OnboardingInitialState()) {
    on<OnboardingInitialized>(_onInitialized);
    on<OnboardingLoadExistingRequested>(_onLoadExistingRequested);
    on<OnboardingNameUpdated>(_onNameUpdated);
    on<OnboardingGenderUpdated>(_onGenderUpdated);
    on<OnboardingBirthDateUpdated>(_onBirthDateUpdated);
    on<OnboardingHeightUpdated>(_onHeightUpdated);
    on<OnboardingWeightUpdated>(_onWeightUpdated);
    on<OnboardingTargetWeightUpdated>(_onTargetWeightUpdated);
    on<OnboardingUnitsUpdated>(_onUnitsUpdated);
    on<OnboardingGoalUpdated>(_onGoalUpdated);
    on<OnboardingActivityUpdated>(_onActivityUpdated);
    on<OnboardingDietTypeUpdated>(_onDietTypeUpdated);
    on<OnboardingAllergiesUpdated>(_onAllergiesUpdated);
    on<OnboardingDisclaimerAcceptedUpdated>(_onDisclaimerAcceptedUpdated);
    on<OnboardingSaveAndCompleteRequested>(_onSaveAndCompleteRequested);
  }

  final OnboardingRepository _onboardingRepository;

  void _onInitialized(OnboardingInitialized event, Emitter<OnboardingState> emit) {
    final initialName = event.initialName ?? 'Friend';
    emit(OnboardingLoadedState(state.profile.copyWith(name: initialName)));
  }

  Future<void> _onLoadExistingRequested(
    OnboardingLoadExistingRequested event,
    Emitter<OnboardingState> emit,
  ) async {
    try {
      final existing = await _onboardingRepository.loadExistingProfile(userId: event.userId);
      if (existing != null) {
        emit(OnboardingLoadedState(existing));
      }
    } catch (_) {}
  }

  void _onNameUpdated(OnboardingNameUpdated event, Emitter<OnboardingState> emit) {
    emit(OnboardingLoadedState(state.profile.copyWith(name: event.name)));
  }

  void _onGenderUpdated(OnboardingGenderUpdated event, Emitter<OnboardingState> emit) {
    emit(OnboardingLoadedState(state.profile.copyWith(gender: event.gender)));
  }

  void _onBirthDateUpdated(OnboardingBirthDateUpdated event, Emitter<OnboardingState> emit) {
    emit(OnboardingLoadedState(state.profile.copyWith(birthDate: event.birthDate)));
  }

  void _onHeightUpdated(OnboardingHeightUpdated event, Emitter<OnboardingState> emit) {
    emit(OnboardingLoadedState(state.profile.copyWith(heightCm: event.heightCm)));
  }

  void _onWeightUpdated(OnboardingWeightUpdated event, Emitter<OnboardingState> emit) {
    emit(OnboardingLoadedState(state.profile.copyWith(weightKg: event.weightKg)));
  }

  void _onTargetWeightUpdated(OnboardingTargetWeightUpdated event, Emitter<OnboardingState> emit) {
    emit(OnboardingLoadedState(state.profile.copyWith(targetWeightKg: event.targetWeightKg)));
  }

  void _onUnitsUpdated(OnboardingUnitsUpdated event, Emitter<OnboardingState> emit) {
    emit(OnboardingLoadedState(state.profile.copyWith(isMetric: event.isMetric)));
  }

  void _onGoalUpdated(OnboardingGoalUpdated event, Emitter<OnboardingState> emit) {
    emit(OnboardingLoadedState(state.profile.copyWith(goal: event.goal)));
  }

  void _onActivityUpdated(OnboardingActivityUpdated event, Emitter<OnboardingState> emit) {
    emit(OnboardingLoadedState(state.profile.copyWith(activityLevel: event.activityLevel)));
  }

  void _onDietTypeUpdated(OnboardingDietTypeUpdated event, Emitter<OnboardingState> emit) {
    emit(OnboardingLoadedState(state.profile.copyWith(dietType: event.dietType)));
  }

  void _onAllergiesUpdated(OnboardingAllergiesUpdated event, Emitter<OnboardingState> emit) {
    emit(OnboardingLoadedState(state.profile.copyWith(allergies: event.allergies)));
  }

  void _onDisclaimerAcceptedUpdated(
      OnboardingDisclaimerAcceptedUpdated event, Emitter<OnboardingState> emit) {
    emit(OnboardingLoadedState(state.profile.copyWith(isDisclaimerAccepted: event.accepted)));
  }

  Future<void> _onSaveAndCompleteRequested(
    OnboardingSaveAndCompleteRequested event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(OnboardingSubmittingState(state.profile));
    try {
      await _onboardingRepository.saveProfileAndComplete(
        profile: state.profile,
        userId: event.userId,
      );
      emit(OnboardingSuccessState(state.profile));
    } catch (e) {
      emit(OnboardingFailureState(state.profile, e.toString()));
    }
  }
}
