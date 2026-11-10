import 'dart:io';

import 'package:bloomi/core/database/tables.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [
  UserProfiles,
  Targets,
  FoodItems,
  FoodUnits,
  CustomFoods,
  MealLogs,
  WaterLogs,
  BodyEntries,
  WorkoutLogs,
  PlanChecklists,
  Reminders,
  AchievementsAndStreaks,
  ScanQueue,
  WeatherCache,
  SyncState,
  ImportedHealthRecords,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? e]) : super(e ?? _openConnection());

  @override
  int get schemaVersion => 4;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
          await _createIndexes();
        },
        onUpgrade: (m, from, to) async {
          if (from < 2) {
            // Add userId and isDirty to existing tables for multi-account isolation
            await m.addColumn(userProfiles, userProfiles.userId);
            await m.addColumn(userProfiles, userProfiles.isDirty);
            await m.addColumn(targets, targets.userId);
            await m.addColumn(targets, targets.isDirty);
            await m.addColumn(customFoods, customFoods.userId);
            await m.addColumn(customFoods, customFoods.isDirty);
            await m.addColumn(mealLogs, mealLogs.userId);
            await m.addColumn(mealLogs, mealLogs.isDirty);
            await m.addColumn(waterLogs, waterLogs.userId);
            await m.addColumn(waterLogs, waterLogs.isDirty);
            await m.addColumn(bodyEntries, bodyEntries.userId);
            await m.addColumn(bodyEntries, bodyEntries.isDirty);
            await m.addColumn(workoutLogs, workoutLogs.userId);
            await m.addColumn(workoutLogs, workoutLogs.isDirty);
            await m.addColumn(planChecklists, planChecklists.userId);
            await m.addColumn(planChecklists, planChecklists.isDirty);
            await m.addColumn(reminders, reminders.userId);
            await m.addColumn(reminders, reminders.isDirty);
            await m.addColumn(achievementsAndStreaks, achievementsAndStreaks.userId);
            await m.addColumn(achievementsAndStreaks, achievementsAndStreaks.isDirty);
            await m.addColumn(syncState, syncState.userId);
            await m.addColumn(syncState, syncState.hasPulledOnce);
          }
          if (from < 3) {
            await m.createTable(importedHealthRecords);
          }
          if (from < 4) {
            await m.addColumn(scanQueue, scanQueue.userId);
          }
          await _createIndexes();
        },
        beforeOpen: (details) async {
          await _createIndexes();
        },
      );

  Future<void> _createIndexes() async {
    try {
      await customStatement('CREATE INDEX IF NOT EXISTS idx_body_entries_user_type ON body_entries (user_id, type, deleted, measured_at);');
      await customStatement('CREATE INDEX IF NOT EXISTS idx_workout_logs_user_date ON workout_logs (user_id, deleted, recorded_at);');
      await customStatement('CREATE INDEX IF NOT EXISTS idx_meal_logs_user_date ON meal_logs (user_id, deleted, date);');
      await customStatement('CREATE INDEX IF NOT EXISTS idx_water_logs_user_date ON water_logs (user_id, deleted, date);');
      await customStatement('CREATE INDEX IF NOT EXISTS idx_imported_records_user_type ON imported_health_records (user_id, data_type, start_time, end_time);');
      await customStatement('CREATE INDEX IF NOT EXISTS idx_targets_user ON targets (user_id, deleted);');
    } catch (_) {}
  }

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'bloomi.sqlite'));
      return NativeDatabase.createInBackground(file);
    });
  }

  /// Clears only the specified user's data from SQLite on account deletion.
  /// Never wipes other users' data or global reference tables.
  Future<void> clearUserScopedDataForUser(String userId) async {
    await (delete(userProfiles)..where((t) => t.userId.equals(userId))).go();
    await (delete(targets)..where((t) => t.userId.equals(userId))).go();
    await (delete(mealLogs)..where((t) => t.userId.equals(userId))).go();
    await (delete(waterLogs)..where((t) => t.userId.equals(userId))).go();
    await (delete(bodyEntries)..where((t) => t.userId.equals(userId))).go();
    await (delete(workoutLogs)..where((t) => t.userId.equals(userId))).go();
    await (delete(planChecklists)..where((t) => t.userId.equals(userId))).go();
    await (delete(reminders)..where((t) => t.userId.equals(userId))).go();
    await (delete(customFoods)..where((t) => t.userId.equals(userId))).go();
    await (delete(achievementsAndStreaks)..where((t) => t.userId.equals(userId))).go();
    await (delete(syncState)..where((t) => t.userId.equals(userId))).go();
    await (delete(importedHealthRecords)..where((t) => t.userId.equals(userId))).go();
    await (delete(scanQueue)..where((t) => t.userId.equals(userId))).go();
  }

  /// Clears user-scoped data. If [userId] is specified, clears only that user's records.
  /// If null, clears all records from user-scoped tables (used in test fixtures or complete factory reset).
  Future<void> clearUserScopedData([String? userId]) async {
    if (userId != null) {
      await clearUserScopedDataForUser(userId);
      return;
    }
    await delete(userProfiles).go();
    await delete(targets).go();
    await delete(mealLogs).go();
    await delete(waterLogs).go();
    await delete(bodyEntries).go();
    await delete(workoutLogs).go();
    await delete(planChecklists).go();
    await delete(reminders).go();
    await delete(customFoods).go();
    await delete(achievementsAndStreaks).go();
    await delete(syncState).go();
    await delete(importedHealthRecords).go();
    await delete(scanQueue).go();
  }
}
