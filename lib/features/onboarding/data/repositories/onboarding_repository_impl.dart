import 'dart:async';
import 'package:bloomi/features/auth/domain/repositories/auth_repository.dart';
import 'package:bloomi/features/onboarding/data/local/onboarding_local_data_source.dart';
import 'package:bloomi/features/onboarding/domain/entities/onboarding_profile_entity.dart';
import 'package:bloomi/features/onboarding/domain/repositories/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  OnboardingRepositoryImpl({
    required OnboardingLocalDataSource localDataSource,
    required AuthRepository authRepository,
  })  : _localDataSource = localDataSource,
        _authRepository = authRepository;

  final OnboardingLocalDataSource _localDataSource;
  final AuthRepository _authRepository;

  @override
  Future<void> saveProfileAndComplete({
    required OnboardingProfileEntity profile,
    String? userId,
  }) async {
    // 1. Write profile + targets to local DB (fast — SQLite only, no network).
    await _localDataSource.saveProfileAndTargets(profile: profile, userId: userId);

    // 2. Mark onboarding completed locally (SharedPreferences + local cache) — no network.
    //    The RTDB sync inside setOnboardingCompleted is now fire-and-forget (unawaited).
    await _authRepository.setOnboardingCompleted(true);
    // Note: setOnboardingCompleted internally calls markOnboardingCompletedInRtdb()
    // which is already wrapped in try/catch and unawaited in the new implementation.
  }

  @override
  Future<OnboardingProfileEntity?> loadExistingProfile({String? userId}) {
    return _localDataSource.loadExistingProfile(userId: userId);
  }
}
