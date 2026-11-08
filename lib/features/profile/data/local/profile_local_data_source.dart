import 'package:bloomi/core/database/app_database.dart';
import 'package:drift/drift.dart' as drift;

abstract class ProfileLocalDataSource {
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

class ProfileLocalDataSourceImpl implements ProfileLocalDataSource {
  final AppDatabase _db;
  final String Function()? _userIdProvider;

  ProfileLocalDataSourceImpl(this._db, {String Function()? userIdProvider})
      : _userIdProvider = userIdProvider;

  String get _currentUserId => _userIdProvider?.call() ?? 'default_user';

  @override
  Stream<UserProfile?> watchProfile() {
    return (_db.select(_db.userProfiles)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false))
          ..limit(1))
        .watchSingleOrNull();
  }

  @override
  Stream<Target?> watchTargets() {
    return (_db.select(_db.targets)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false))
          ..orderBy([(t) => drift.OrderingTerm.desc(t.updatedAt)])
          ..limit(1))
        .watchSingleOrNull();
  }

  @override
  Stream<BodyEntry?> watchLatestWeight() {
    return (_db.select(_db.bodyEntries)
          ..where((b) =>
              b.userId.equals(_currentUserId) &
              b.type.equals('weight') &
              b.deleted.equals(false))
          ..orderBy([(b) => drift.OrderingTerm.desc(b.measuredAt)])
          ..limit(1))
        .watchSingleOrNull();
  }

  @override
  Future<UserProfile?> getProfile() {
    return (_db.select(_db.userProfiles)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false))
          ..limit(1))
        .getSingleOrNull();
  }

  @override
  Future<void> updateProfile({
    required String name,
    required String gender,
    required double heightCm,
    required String dietType,
    required String allergies,
  }) async {
    final existing = await getProfile();
    final now = DateTime.now();

    if (existing != null) {
      await (_db.update(_db.userProfiles)..where((tbl) => tbl.id.equals(existing.id) & tbl.userId.equals(_currentUserId))).write(
        UserProfilesCompanion(
          name: drift.Value(name),
          gender: drift.Value(gender),
          heightCm: drift.Value(heightCm),
          dietType: drift.Value(dietType),
          allergies: drift.Value(allergies),
          isDirty: const drift.Value(true),
          updatedAt: drift.Value(now),
        ),
      );
    } else {
      await _db.into(_db.userProfiles).insert(
            UserProfilesCompanion.insert(
              id: _currentUserId,
              userId: drift.Value(_currentUserId),
              isDirty: const drift.Value(true),
              name: name,
              gender: drift.Value(gender),
              heightCm: drift.Value(heightCm),
              dietType: drift.Value(dietType),
              allergies: drift.Value(allergies),
              createdAt: now,
              updatedAt: now,
            ),
          );
    }
  }
}

