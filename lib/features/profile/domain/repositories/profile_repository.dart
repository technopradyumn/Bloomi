import 'package:bloomi/core/database/app_database.dart';

abstract class ProfileRepository {
  Stream<UserProfile?> watchProfile();
  Future<UserProfile?> getProfile();
  Stream<Target?> watchTargets();
  Stream<BodyEntry?> watchLatestWeight();
  Future<void> updateProfile({
    required String name,
    required String gender,
    required double heightCm,
    required String dietType,
    required String allergies,
  });
}

