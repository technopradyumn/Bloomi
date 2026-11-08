import 'package:bloomi/core/database/app_database.dart';
import 'package:drift/drift.dart' as drift;
import 'package:uuid/uuid.dart';

abstract class PlanLocalDataSource {
  Stream<List<PlanChecklist>> watchChecklistForDate(DateTime date);
  Stream<List<MealLog>> watchMealLogsForDate(DateTime date);
  Stream<Target?> watchTargets();
  Stream<UserProfile?> watchUserProfile();
  Stream<List<WaterLog>> watchWaterLogsForDate(DateTime date);
  Future<void> toggleChecklistItem({required String itemKey, required DateTime date});
  Future<void> updateTargets({
    required double calories,
    required double protein,
    required double carbs,
    required double fat,
    required double fibre,
    required double waterMl,
    required int steps,
    required double sleepHours,
    double? targetWeightKg,
  });
  Future<void> updateStepTarget(int newStepTarget);
  Future<Target?> getLatestTargets();
  Future<UserProfile?> getUserProfile();
  Future<List<MealLog>> getMealLogsForDate(DateTime date);
  Future<List<WaterLog>> getWaterLogsForDate(DateTime date);
  Future<List<WorkoutLog>> getWorkoutLogsForDate(DateTime date);
  Future<List<FoodItem>> getAllFoodItems();
  Future<List<PlanChecklist>> getChecklistForDate(DateTime date);
}

class PlanLocalDataSourceImpl implements PlanLocalDataSource {
  final AppDatabase _db;
  final String Function()? _userIdProvider;
  final _uuid = const Uuid();

  PlanLocalDataSourceImpl(this._db, {String Function()? userIdProvider})
      : _userIdProvider = userIdProvider;

  String get _currentUserId => _userIdProvider?.call() ?? 'default_user';

  @override
  Stream<List<PlanChecklist>> watchChecklistForDate(DateTime date) {
    final start = DateTime(date.year, date.month, date.day);
    final end = DateTime(date.year, date.month, date.day, 23, 59, 59);

    return (_db.select(_db.planChecklists)
          ..where((tbl) =>
              tbl.userId.equals(_currentUserId) &
              tbl.date.isBiggerOrEqualValue(start) &
              tbl.date.isSmallerOrEqualValue(end) &
              tbl.deleted.equals(false)))
        .watch();
  }

  @override
  Stream<List<MealLog>> watchMealLogsForDate(DateTime date) {
    final start = DateTime(date.year, date.month, date.day);
    final end = DateTime(date.year, date.month, date.day, 23, 59, 59);

    return (_db.select(_db.mealLogs)
          ..where((tbl) =>
              tbl.userId.equals(_currentUserId) &
              tbl.date.isBiggerOrEqualValue(start) &
              tbl.date.isSmallerOrEqualValue(end) &
              tbl.deleted.equals(false)))
        .watch();
  }

  @override
  Stream<Target?> watchTargets() {
    return (_db.select(_db.targets)
          ..where((tbl) =>
              (tbl.userId.equals(_currentUserId) | tbl.userId.equals('default_user')) &
              tbl.deleted.equals(false))
          ..orderBy([(tbl) => drift.OrderingTerm.desc(tbl.updatedAt)])
          ..limit(1))
        .watchSingleOrNull();
  }

  @override
  Stream<UserProfile?> watchUserProfile() {
    return (_db.select(_db.userProfiles)
          ..where((tbl) => tbl.userId.equals(_currentUserId) & tbl.deleted.equals(false))
          ..limit(1))
        .watchSingleOrNull();
  }

  @override
  Stream<List<WaterLog>> watchWaterLogsForDate(DateTime date) {
    final start = DateTime(date.year, date.month, date.day);
    final end = DateTime(date.year, date.month, date.day, 23, 59, 59);

    return (_db.select(_db.waterLogs)
          ..where((tbl) =>
              tbl.userId.equals(_currentUserId) &
              tbl.date.isBiggerOrEqualValue(start) &
              tbl.date.isSmallerOrEqualValue(end) &
              tbl.deleted.equals(false)))
        .watch();
  }

  @override
  Future<void> toggleChecklistItem({
    required String itemKey,
    required DateTime date,
  }) async {
    final start = DateTime(date.year, date.month, date.day);
    final end = DateTime(date.year, date.month, date.day, 23, 59, 59);

    final existing = await (_db.select(_db.planChecklists)
          ..where((tbl) =>
              tbl.userId.equals(_currentUserId) &
              tbl.date.isBiggerOrEqualValue(start) &
              tbl.date.isSmallerOrEqualValue(end) &
              tbl.item.equals(itemKey) &
              tbl.deleted.equals(false)))
        .getSingleOrNull();

    final now = DateTime.now();

    if (existing != null) {
      await (_db.update(_db.planChecklists)..where((tbl) => tbl.id.equals(existing.id) & tbl.userId.equals(_currentUserId))).write(
        PlanChecklistsCompanion(
          done: drift.Value(!existing.done),
          isDirty: const drift.Value(true),
          updatedAt: drift.Value(now),
        ),
      );
    } else {
      await _db.into(_db.planChecklists).insert(
            PlanChecklistsCompanion(
              id: drift.Value(_uuid.v4()),
              userId: drift.Value(_currentUserId),
              isDirty: const drift.Value(true),
              date: drift.Value(start),
              item: drift.Value(itemKey),
              done: const drift.Value(true),
              createdAt: drift.Value(now),
              updatedAt: drift.Value(now),
              deleted: const drift.Value(false),
            ),
          );
    }
  }

  @override
  Future<void> updateTargets({
    required double calories,
    required double protein,
    required double carbs,
    required double fat,
    required double fibre,
    required double waterMl,
    required int steps,
    required double sleepHours,
    double? targetWeightKg,
  }) async {
    final now = DateTime.now();
    final existing = await (_db.select(_db.targets)
          ..where((tbl) =>
              (tbl.userId.equals(_currentUserId) | tbl.userId.equals('default_user')) &
              tbl.deleted.equals(false))
          ..orderBy([(tbl) => drift.OrderingTerm.desc(tbl.updatedAt)])
          ..limit(1))
        .getSingleOrNull();

    if (existing != null) {
      await (_db.update(_db.targets)..where((tbl) => tbl.id.equals(existing.id) & tbl.userId.equals(_currentUserId))).write(
        TargetsCompanion(
          calories: drift.Value(calories),
          protein: drift.Value(protein),
          carbs: drift.Value(carbs),
          fat: drift.Value(fat),
          fibre: drift.Value(fibre),
          waterMl: drift.Value(waterMl),
          steps: drift.Value(steps),
          sleepHours: drift.Value(sleepHours),
          targetWeightKg: drift.Value(targetWeightKg ?? existing.targetWeightKg),
          isDirty: const drift.Value(true),
          updatedAt: drift.Value(now),
        ),
      );
    } else {
      await _db.into(_db.targets).insert(
            TargetsCompanion(
              id: drift.Value(_uuid.v4()),
              userId: drift.Value(_currentUserId),
              isDirty: const drift.Value(true),
              calories: drift.Value(calories),
              protein: drift.Value(protein),
              carbs: drift.Value(carbs),
              fat: drift.Value(fat),
              fibre: drift.Value(fibre),
              waterMl: drift.Value(waterMl),
              steps: drift.Value(steps),
              sleepHours: drift.Value(sleepHours),
              targetWeightKg: drift.Value(targetWeightKg),
              createdAt: drift.Value(now),
              updatedAt: drift.Value(now),
              deleted: const drift.Value(false),
            ),
          );
    }
  }

  @override
  Future<void> updateStepTarget(int newStepTarget) async {
    final existing = await getLatestTargets();
    final now = DateTime.now();
    if (existing != null) {
      await (_db.update(_db.targets)
            ..where((tbl) => tbl.id.equals(existing.id) & tbl.userId.equals(_currentUserId)))
          .write(
        TargetsCompanion(
          steps: drift.Value(newStepTarget),
          updatedAt: drift.Value(now),
          isDirty: const drift.Value(true),
        ),
      );
    } else {
      await _db.into(_db.targets).insert(
        TargetsCompanion(
          id: drift.Value(_uuid.v4()),
          userId: drift.Value(_currentUserId),
          isDirty: const drift.Value(true),
          calories: const drift.Value(2000.0),
          protein: const drift.Value(70.0),
          carbs: const drift.Value(210.0),
          fat: const drift.Value(48.0),
          fibre: const drift.Value(24.0),
          waterMl: const drift.Value(2200.0),
          steps: drift.Value(newStepTarget),
          sleepHours: const drift.Value(8.0),
          targetWeightKg: const drift.Value(65.0),
          createdAt: drift.Value(now),
          updatedAt: drift.Value(now),
          deleted: const drift.Value(false),
        ),
      );
    }
  }

  @override
  Future<Target?> getLatestTargets() {
    return (_db.select(_db.targets)
          ..where((tbl) =>
              (tbl.userId.equals(_currentUserId) | tbl.userId.equals('default_user')) &
              tbl.deleted.equals(false))
          ..orderBy([(tbl) => drift.OrderingTerm.desc(tbl.updatedAt)])
          ..limit(1))
        .getSingleOrNull();
  }

  @override
  Future<UserProfile?> getUserProfile() {
    return (_db.select(_db.userProfiles)
          ..where((tbl) => tbl.userId.equals(_currentUserId) & tbl.deleted.equals(false))
          ..limit(1))
        .getSingleOrNull();
  }

  @override
  Future<List<MealLog>> getMealLogsForDate(DateTime date) {
    final start = DateTime(date.year, date.month, date.day);
    final end = DateTime(date.year, date.month, date.day, 23, 59, 59);

    return (_db.select(_db.mealLogs)
          ..where((tbl) =>
              tbl.userId.equals(_currentUserId) &
              tbl.date.isBiggerOrEqualValue(start) &
              tbl.date.isSmallerOrEqualValue(end) &
              tbl.deleted.equals(false)))
        .get();
  }

  @override
  Future<List<WaterLog>> getWaterLogsForDate(DateTime date) {
    final start = DateTime(date.year, date.month, date.day);
    final end = DateTime(date.year, date.month, date.day, 23, 59, 59);

    return (_db.select(_db.waterLogs)
          ..where((tbl) =>
              tbl.userId.equals(_currentUserId) &
              tbl.date.isBiggerOrEqualValue(start) &
              tbl.date.isSmallerOrEqualValue(end) &
              tbl.deleted.equals(false)))
        .get();
  }

  @override
  Future<List<WorkoutLog>> getWorkoutLogsForDate(DateTime date) {
    final start = DateTime(date.year, date.month, date.day);
    final end = DateTime(date.year, date.month, date.day, 23, 59, 59);

    return (_db.select(_db.workoutLogs)
          ..where((tbl) =>
              tbl.userId.equals(_currentUserId) &
              tbl.recordedAt.isBiggerOrEqualValue(start) &
              tbl.recordedAt.isSmallerOrEqualValue(end) &
              tbl.deleted.equals(false)))
        .get();
  }

  @override
  Future<List<FoodItem>> getAllFoodItems() {
    return (_db.select(_db.foodItems)
          ..where((tbl) => tbl.deleted.equals(false)))
        .get();
  }

  @override
  Future<List<PlanChecklist>> getChecklistForDate(DateTime date) {
    final start = DateTime(date.year, date.month, date.day);
    final end = DateTime(date.year, date.month, date.day, 23, 59, 59);

    return (_db.select(_db.planChecklists)
          ..where((tbl) =>
              tbl.userId.equals(_currentUserId) &
              tbl.date.isBiggerOrEqualValue(start) &
              tbl.date.isSmallerOrEqualValue(end) &
              tbl.deleted.equals(false)))
        .get();
  }
}

