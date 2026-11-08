import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/profile/data/local/profile_local_data_source.dart';
import 'package:bloomi/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileLocalDataSource _localDataSource;

  ProfileRepositoryImpl(this._localDataSource);

  @override
  Stream<UserProfile?> watchProfile() => _localDataSource.watchProfile();

  @override
  Future<UserProfile?> getProfile() => _localDataSource.getProfile();

  @override
  Stream<Target?> watchTargets() => _localDataSource.watchTargets();

  @override
  Stream<BodyEntry?> watchLatestWeight() => _localDataSource.watchLatestWeight();

  @override
  Future<void> updateProfile({
    required String name,
    required String gender,
    required double heightCm,
    required String dietType,
    required String allergies,
  }) =>
      _localDataSource.updateProfile(
        name: name,
        gender: gender,
        heightCm: heightCm,
        dietType: dietType,
        allergies: allergies,
      );
}

