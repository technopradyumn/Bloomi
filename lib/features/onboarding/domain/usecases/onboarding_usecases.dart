import 'package:bloomi/features/onboarding/domain/entities/onboarding_profile_entity.dart';
import 'package:bloomi/features/onboarding/domain/repositories/onboarding_repository.dart';

class SaveOnboardingProfileUseCase {
  const SaveOnboardingProfileUseCase(this._repository);
  final OnboardingRepository _repository;

  Future<void> call({
    required OnboardingProfileEntity profile,
    String? userId,
  }) =>
      _repository.saveProfileAndComplete(profile: profile, userId: userId);
}

