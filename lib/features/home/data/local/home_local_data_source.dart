import 'dart:async';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/services/widget/widget_sync_service.dart';
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

abstract class HomeLocalDataSource {
  Stream<List<MealLog>> watchMealsForDate(DateTime date);
  Stream<int> watchWaterForDate(DateTime date);
  Stream<Target?> watchLatestTargets();
  Stream<UserProfile?> watchUserProfile();
  Stream<int> watchCurrentStreak();
  Future<List<MealLog>> getMealsForDate(DateTime date);
  Future<int> getWaterForDate(DateTime date);
  Future<Target?> getLatestTargets();
  Future<UserProfile?> getUserProfile();
  Future<int> getCurrentStreak();
  Future<void> logWater({required int ml, DateTime? timestamp});
  Future<void> logBodyEntry({
    required String type,
    required double value,
    required String unit,
    DateTime? measuredAt,
  });
  Future<void> logWorkout({
    required String type,
    required int durationMinutes,
    required double calories,
    DateTime? timestamp,
  });
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  HomeLocalDataSourceImpl(this._db, {String Function()? userIdProvider})
      : _userIdProvider = userIdProvider;
  final AppDatabase _db;
  final String Function()? _userIdProvider;

  String get _currentUserId => _userIdProvider?.call() ?? 'default_user';

  @override
  Stream<List<MealLog>> watchMealsForDate(DateTime date) {
    final startOfDay = DateTime(date.year, date.month, date.day);
    final endOfDay = DateTime(date.year, date.month, date.day, 23, 59, 59, 999);

    return (_db.select(_db.mealLogs)
          ..where((t) =>
              (t.userId.equals(_currentUserId) | t.userId.equals('default_user')) &
              t.date.isBiggerOrEqualValue(startOfDay) &
              t.date.isSmallerOrEqualValue(endOfDay) &
              t.deleted.equals(false)))
        .watch();
  }

  @override
  Stream<int> watchWaterForDate(DateTime date) {
    final startOfDay = DateTime(date.year, date.month, date.day);
    final endOfDay = DateTime(date.year, date.month, date.day, 23, 59, 59, 999);

    return (_db.select(_db.waterLogs)
          ..where((t) =>
              (t.userId.equals(_currentUserId) | t.userId.equals('default_user')) &
              t.date.isBiggerOrEqualValue(startOfDay) &
              t.date.isSmallerOrEqualValue(endOfDay) &
              t.deleted.equals(false)))
        .watch()
        .map((logs) {
      if (logs.isEmpty) return 0;
      final total = logs.fold<int>(0, (sum, log) => sum + log.ml);
      return total < 0 ? 0 : total;
    });
  }

  @override
  Stream<Target?> watchLatestTargets() {
    return (_db.select(_db.targets)
          ..where((t) =>
              (t.userId.equals(_currentUserId) | t.userId.equals('default_user')) &
              t.deleted.equals(false))
          ..orderBy([
            (t) => OrderingTerm(expression: t.updatedAt, mode: OrderingMode.desc)
          ])
          ..limit(1))
        .watchSingleOrNull();
  }

  @override
  Stream<UserProfile?> watchUserProfile() {
    return (_db.select(_db.userProfiles)
          ..where((p) =>
              (p.id.equals(_currentUserId) |
                  p.userId.equals(_currentUserId) |
                  p.id.equals('default_user') |
                  p.userId.equals('default_user')) &
              p.deleted.equals(false))
          ..orderBy([
            (p) => OrderingTerm(expression: p.updatedAt, mode: OrderingMode.desc)
          ])
          ..limit(1))
        .watchSingleOrNull();
  }

  @override
  Stream<int> watchCurrentStreak() {
    return (_db.select(_db.mealLogs)
          ..where((t) =>
              (t.userId.equals(_currentUserId) | t.userId.equals('default_user')) &
              t.deleted.equals(false)))
        .watch()
        .map((meals) {
      if (meals.isEmpty) return 0;

      final loggedDates = meals
          .map((m) => DateTime(m.date.year, m.date.month, m.date.day))
          .toSet();

      final now = DateTime.now();
      var checkDate = DateTime(now.year, now.month, now.day);
      int streak = 0;

      if (!loggedDates.contains(checkDate)) {
        checkDate = checkDate.subtract(const Duration(days: 1));
      }

      while (loggedDates.contains(checkDate)) {
        streak++;
        checkDate = checkDate.subtract(const Duration(days: 1));
      }

      return streak;
    });
  }

  @override
  Future<List<MealLog>> getMealsForDate(DateTime date) {
    final startOfDay = DateTime(date.year, date.month, date.day);
    final endOfDay = DateTime(date.year, date.month, date.day, 23, 59, 59, 999);

    return (_db.select(_db.mealLogs)
          ..where((t) =>
              (t.userId.equals(_currentUserId) | t.userId.equals('default_user')) &
              t.date.isBiggerOrEqualValue(startOfDay) &
              t.date.isSmallerOrEqualValue(endOfDay) &
              t.deleted.equals(false)))
        .get();
  }

  @override
  Future<int> getWaterForDate(DateTime date) async {
    final startOfDay = DateTime(date.year, date.month, date.day);
    final endOfDay = DateTime(date.year, date.month, date.day, 23, 59, 59, 999);

    final logs = await (_db.select(_db.waterLogs)
          ..where((t) =>
              (t.userId.equals(_currentUserId) | t.userId.equals('default_user')) &
              t.date.isBiggerOrEqualValue(startOfDay) &
              t.date.isSmallerOrEqualValue(endOfDay) &
              t.deleted.equals(false)))
        .get();

    if (logs.isEmpty) return 0;
    final total = logs.fold<int>(0, (sum, log) => sum + log.ml);
    return total < 0 ? 0 : total;
  }

  @override
  Future<Target?> getLatestTargets() {
    return (_db.select(_db.targets)
          ..where((t) =>
              (t.userId.equals(_currentUserId) | t.userId.equals('default_user')) &
              t.deleted.equals(false))
          ..orderBy([
            (t) => OrderingTerm(expression: t.updatedAt, mode: OrderingMode.desc)
          ])
          ..limit(1))
        .getSingleOrNull();
  }

  @override
  Future<UserProfile?> getUserProfile() {
    return (_db.select(_db.userProfiles)
          ..where((p) =>
              (p.id.equals(_currentUserId) |
                  p.userId.equals(_currentUserId) |
                  p.id.equals('default_user') |
                  p.userId.equals('default_user')) &
              p.deleted.equals(false))
          ..orderBy([
            (p) => OrderingTerm(expression: p.updatedAt, mode: OrderingMode.desc)
          ])
          ..limit(1))
        .getSingleOrNull();
  }

  @override
  Future<int> getCurrentStreak() async {
    final meals = await (_db.select(_db.mealLogs)
          ..where((t) =>
              (t.userId.equals(_currentUserId) | t.userId.equals('default_user')) &
              t.deleted.equals(false)))
        .get();
    if (meals.isEmpty) return 0;

    final loggedDates = meals
        .map((m) => DateTime(m.date.year, m.date.month, m.date.day))
        .toSet();

    final now = DateTime.now();
    var checkDate = DateTime(now.year, now.month, now.day);
    int streak = 0;

    if (!loggedDates.contains(checkDate)) {
      checkDate = checkDate.subtract(const Duration(days: 1));
    }

    while (loggedDates.contains(checkDate)) {
      streak++;
      checkDate = checkDate.subtract(const Duration(days: 1));
    }

    return streak;
  }

  @override
  Future<void> logWater({required int ml, DateTime? timestamp}) async {
    final now = timestamp ?? DateTime.now();
    await _db.into(_db.waterLogs).insert(
      WaterLogsCompanion.insert(
        id: const Uuid().v4(),
        userId: Value(_currentUserId),
        isDirty: const Value(true),
        date: now,
        ml: ml,
        createdAt: now,
        updatedAt: now,
      ),
    );
    unawaited(sl<WidgetSyncService>().syncToNativeWidgets().catchError((_) => false));
  }

  @override
  Future<void> logBodyEntry({
    required String type,
    required double value,
    required String unit,
    DateTime? measuredAt,
  }) async {
    final now = measuredAt ?? DateTime.now();
    await _db.into(_db.bodyEntries).insert(
      BodyEntriesCompanion.insert(
        id: const Uuid().v4(),
        userId: Value(_currentUserId),
        isDirty: const Value(true),
        type: type,
        value: value,
        unit: unit,
        measuredAt: now,
        createdAt: now,
        updatedAt: now,
      ),
    );
  }

  @override
  Future<void> logWorkout({
    required String type,
    required int durationMinutes,
    required double calories,
    DateTime? timestamp,
  }) async {
    final now = timestamp ?? DateTime.now();
    await _db.into(_db.workoutLogs).insert(
      WorkoutLogsCompanion.insert(
        id: const Uuid().v4(),
        userId: Value(_currentUserId),
        isDirty: const Value(true),
        type: type,
        durationMinutes: durationMinutes,
        calories: calories,
        recordedAt: now,
        createdAt: now,
        updatedAt: now,
      ),
    );
  }
}

