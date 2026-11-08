import 'package:bloomi/features/onboarding/domain/entities/onboarding_profile_entity.dart';

abstract class OnboardingRepository {
  Future<void> saveProfileAndComplete({
    required OnboardingProfileEntity profile,
    String? userId,
  });

  Future<OnboardingProfileEntity?> loadExistingProfile({String? userId});
}
