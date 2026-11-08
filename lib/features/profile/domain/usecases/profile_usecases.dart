import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/profile/domain/repositories/profile_repository.dart';

class WatchProfileUseCase {
  final ProfileRepository repository;
  WatchProfileUseCase(this.repository);

  Stream<UserProfile?> call() => repository.watchProfile();
}

class UpdateProfileUseCase {
  final ProfileRepository repository;
  UpdateProfileUseCase(this.repository);

  Future<void> call({
    required String name,
    required String gender,
    required double heightCm,
    required String dietType,
    required String allergies,
  }) =>
      repository.updateProfile(
        name: name,
        gender: gender,
        heightCm: heightCm,
        dietType: dietType,
        allergies: allergies,
      );
}

