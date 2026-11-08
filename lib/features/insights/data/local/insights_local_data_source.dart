import 'package:bloomi/core/database/app_database.dart';
import 'package:drift/drift.dart' as drift;

abstract class InsightsLocalDataSource {
  Future<List<AchievementsAndStreak>> getAchievements();
  Future<void> insertAchievement(AchievementsAndStreaksCompanion achievement);
  Stream<List<AchievementsAndStreak>> watchAchievements();
  Future<void> unlockBadge(String badgeId, DateTime time);
  Future<List<MealLog>> getMealLogsSince(DateTime since);
  Future<List<WaterLog>> getWaterLogsSince(DateTime since);
  Future<List<ImportedHealthRecord>> getStepRecordsSince(DateTime since);
  Future<List<MealLog>> getAllMealLogs();
  Future<List<WaterLog>> getAllWaterLogs();
}

class InsightsLocalDataSourceImpl implements InsightsLocalDataSource {
  final AppDatabase _db;
  final String Function()? _userIdProvider;

  InsightsLocalDataSourceImpl(this._db, {String Function()? userIdProvider})
      : _userIdProvider = userIdProvider;

  String get _currentUserId => _userIdProvider?.call() ?? 'default_user';

  @override
  Future<List<AchievementsAndStreak>> getAchievements() {
    return (_db.select(_db.achievementsAndStreaks)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false)))
        .get();
  }

  @override
  Future<void> insertAchievement(AchievementsAndStreaksCompanion achievement) {
    return _db.into(_db.achievementsAndStreaks).insert(
      achievement.copyWith(
        userId: drift.Value(_currentUserId),
        isDirty: const drift.Value(true),
      ),
    );
  }

  @override
  Stream<List<AchievementsAndStreak>> watchAchievements() {
    return (_db.select(_db.achievementsAndStreaks)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false)))
        .watch();
  }

  @override
  Future<void> unlockBadge(String badgeId, DateTime time) {
    return (_db.update(_db.achievementsAndStreaks)
          ..where((t) => t.badgeId.equals(badgeId) & t.userId.equals(_currentUserId)))
        .write(
      AchievementsAndStreaksCompanion(
        unlockedAt: drift.Value(time),
        isDirty: const drift.Value(true),
        updatedAt: drift.Value(time),
      ),
    );
  }

  @override
  Future<List<MealLog>> getMealLogsSince(DateTime since) {
    return (_db.select(_db.mealLogs)
          ..where((t) =>
              t.userId.equals(_currentUserId) &
              t.date.isBiggerOrEqualValue(since) &
              t.deleted.equals(false)))
        .get();
  }

  @override
  Future<List<WaterLog>> getWaterLogsSince(DateTime since) {
    return (_db.select(_db.waterLogs)
          ..where((t) =>
              t.userId.equals(_currentUserId) &
              t.date.isBiggerOrEqualValue(since) &
              t.deleted.equals(false)))
        .get();
  }

  @override
  Future<List<ImportedHealthRecord>> getStepRecordsSince(DateTime since) {
    return (_db.select(_db.importedHealthRecords)
          ..where((t) =>
              t.userId.equals(_currentUserId) &
              t.dataType.equals('steps') &
              t.startTime.isBiggerOrEqualValue(since)))
        .get();
  }

  @override
  Future<List<MealLog>> getAllMealLogs() {
    return (_db.select(_db.mealLogs)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false))
          ..orderBy([(t) => drift.OrderingTerm.desc(t.date)]))
        .get();
  }

  @override
  Future<List<WaterLog>> getAllWaterLogs() {
    return (_db.select(_db.waterLogs)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false))
          ..orderBy([(t) => drift.OrderingTerm.desc(t.date)]))
        .get();
  }
}

