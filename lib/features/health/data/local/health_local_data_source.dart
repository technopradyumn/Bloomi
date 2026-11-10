import 'package:bloomi/core/database/app_database.dart';
import 'package:drift/drift.dart' as drift;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

abstract class HealthLocalDataSource {
  Stream<List<BodyEntry>> watchBodyEntries({String? type, int? limit});
  Future<List<BodyEntry>> getRecentBodyEntries({String? type, int limit = 20});
  Future<void> insertBodyEntry({
    required String type,
    required double value,
    required String unit,
    DateTime? measuredAt,
    String? source,
  });
  Future<void> softDeleteBodyEntry(String id);

  Stream<List<WorkoutLog>> watchWorkoutLogs({DateTime? date});
  Future<List<WorkoutLog>> getWorkoutLogsForDate(DateTime date);
  Future<void> insertWorkoutLog({
    required String type,
    required int durationMinutes,
    required double calories,
    DateTime? recordedAt,
    String? source,
  });
  Future<void> softDeleteWorkoutLog(String id);
  Future<void> updateWorkoutLog({
    required String id,
    required String type,
    required int durationMinutes,
    required double calories,
    DateTime? recordedAt,
  });

  Future<double?> getLatestWeight();
  Future<Map<String, double?>?> getLatestBloodPressure();
  Stream<BodyEntry?> watchLatestBodyEntry(String type);
  Future<BodyEntry?> getLatestBodyEntry(String type);
  Future<void> updateBodyEntry({
    required String id,
    required double value,
    required String unit,
    DateTime? measuredAt,
  });

  Future<void> saveImportedRecords(List<ImportedHealthRecordsCompanion> records);
  Future<List<ImportedHealthRecord>> getImportedRecords({
    required String dataType,
    DateTime? start,
    DateTime? end,
    String? deviceType,
  });
  Future<String> getPreferredHealthSource();
  Future<void> setPreferredHealthSource(String source);

  Stream<Target?> watchTargets();
  Future<Target?> getLatestTargets();
  Future<int> getStepTarget();
  Future<void> updateStepTarget(int newStepTarget);
}

class HealthLocalDataSourceImpl implements HealthLocalDataSource {
  final AppDatabase _db;
  final String Function()? _userIdProvider;
  final SharedPreferences? _prefs;
  final _uuid = const Uuid();

  HealthLocalDataSourceImpl(
    this._db, {
    String Function()? userIdProvider,
    SharedPreferences? prefs,
  })  : _userIdProvider = userIdProvider,
        _prefs = prefs;

  String get _currentUserId => _userIdProvider?.call() ?? 'default_user';

  @override
  Stream<List<BodyEntry>> watchBodyEntries({String? type, int? limit}) {
    final query = _db.select(_db.bodyEntries)
      ..where((tbl) => tbl.userId.equals(_currentUserId) & tbl.deleted.equals(false));
    if (type != null) {
      query.where((tbl) => tbl.type.equals(type));
    }
    query.orderBy([(tbl) => drift.OrderingTerm.desc(tbl.measuredAt)]);
    if (limit != null) {
      query.limit(limit);
    }
    return query.watch();
  }

  @override
  Future<List<BodyEntry>> getRecentBodyEntries({String? type, int limit = 20}) {
    final query = _db.select(_db.bodyEntries)
      ..where((tbl) => tbl.userId.equals(_currentUserId) & tbl.deleted.equals(false));
    if (type != null) {
      query.where((tbl) => tbl.type.equals(type));
    }
    query.orderBy([(tbl) => drift.OrderingTerm.desc(tbl.measuredAt)]);
    query.limit(limit);
    return query.get();
  }

  @override
  Future<void> insertBodyEntry({
    required String type,
    required double value,
    required String unit,
    DateTime? measuredAt,
    String? source,
  }) async {
    final now = DateTime.now();
    await _db.into(_db.bodyEntries).insert(
          BodyEntriesCompanion(
            id: drift.Value(_uuid.v4()),
            userId: drift.Value(_currentUserId),
            isDirty: const drift.Value(true),
            type: drift.Value(type),
            value: drift.Value(value),
            unit: drift.Value(unit),
            measuredAt: drift.Value(measuredAt ?? now),
            source: drift.Value(source ?? 'manual'),
            createdAt: drift.Value(now),
            updatedAt: drift.Value(now),
            deleted: const drift.Value(false),
          ),
        );
  }

  @override
  Future<void> softDeleteBodyEntry(String id) async {
    await (_db.update(_db.bodyEntries)..where((tbl) => tbl.id.equals(id) & tbl.userId.equals(_currentUserId))).write(
      BodyEntriesCompanion(
        deleted: const drift.Value(true),
        isDirty: const drift.Value(true),
        updatedAt: drift.Value(DateTime.now()),
      ),
    );
  }

  @override
  Stream<List<WorkoutLog>> watchWorkoutLogs({DateTime? date}) {
    final query = _db.select(_db.workoutLogs)
      ..where((tbl) => tbl.userId.equals(_currentUserId) & tbl.deleted.equals(false));

    if (date != null) {
      final start = DateTime(date.year, date.month, date.day);
      final end = start.add(const Duration(days: 1));
      query.where((tbl) =>
          tbl.recordedAt.isBiggerOrEqualValue(start) &
          tbl.recordedAt.isSmallerThanValue(end));
    }

    query.orderBy([(tbl) => drift.OrderingTerm.desc(tbl.recordedAt)]);
    return query.watch();
  }

  @override
  Future<List<WorkoutLog>> getWorkoutLogsForDate(DateTime date) async {
    final start = DateTime(date.year, date.month, date.day);
    final end = start.add(const Duration(days: 1));
    return (_db.select(_db.workoutLogs)
          ..where((tbl) =>
              tbl.userId.equals(_currentUserId) &
              tbl.deleted.equals(false) &
              tbl.recordedAt.isBiggerOrEqualValue(start) &
              tbl.recordedAt.isSmallerThanValue(end))
          ..orderBy([(tbl) => drift.OrderingTerm.desc(tbl.recordedAt)]))
        .get();
  }

  @override
  Future<void> insertWorkoutLog({
    required String type,
    required int durationMinutes,
    required double calories,
    DateTime? recordedAt,
    String? source,
  }) async {
    final now = DateTime.now();
    await _db.into(_db.workoutLogs).insert(
          WorkoutLogsCompanion(
            id: drift.Value(_uuid.v4()),
            userId: drift.Value(_currentUserId),
            isDirty: const drift.Value(true),
            type: drift.Value(type),
            durationMinutes: drift.Value(durationMinutes),
            calories: drift.Value(calories),
            recordedAt: drift.Value(recordedAt ?? now),
            source: drift.Value(source ?? 'manual'),
            createdAt: drift.Value(now),
            updatedAt: drift.Value(now),
            deleted: const drift.Value(false),
          ),
        );
  }

  @override
  Future<void> softDeleteWorkoutLog(String id) async {
    await (_db.update(_db.workoutLogs)..where((tbl) => tbl.id.equals(id) & tbl.userId.equals(_currentUserId))).write(
      WorkoutLogsCompanion(
        deleted: const drift.Value(true),
        isDirty: const drift.Value(true),
        updatedAt: drift.Value(DateTime.now()),
      ),
    );
  }

  @override
  Future<void> updateWorkoutLog({
    required String id,
    required String type,
    required int durationMinutes,
    required double calories,
    DateTime? recordedAt,
  }) async {
    await (_db.update(_db.workoutLogs)
          ..where((tbl) =>
              tbl.id.equals(id) &
              (tbl.userId.equals(_currentUserId) | tbl.userId.equals('default_user'))))
        .write(
      WorkoutLogsCompanion(
        type: drift.Value(type),
        durationMinutes: drift.Value(durationMinutes),
        calories: drift.Value(calories),
        recordedAt: recordedAt != null ? drift.Value(recordedAt) : const drift.Value.absent(),
        isDirty: const drift.Value(true),
        updatedAt: drift.Value(DateTime.now()),
      ),
    );
  }

  @override
  Future<double?> getLatestWeight() async {
    final entry = await (_db.select(_db.bodyEntries)
          ..where((tbl) => tbl.userId.equals(_currentUserId) & tbl.type.equals('weight') & tbl.deleted.equals(false))
          ..orderBy([(tbl) => drift.OrderingTerm.desc(tbl.measuredAt)])
          ..limit(1))
        .getSingleOrNull();
    return entry?.value;
  }

  @override
  Future<Map<String, double?>?> getLatestBloodPressure() async {
    final sys = await (_db.select(_db.bodyEntries)
          ..where((tbl) =>
              tbl.userId.equals(_currentUserId) &
              (tbl.type.equals('blood_pressure_sys') | tbl.type.equals('systolic_bp')) &
              tbl.deleted.equals(false))
          ..orderBy([(tbl) => drift.OrderingTerm.desc(tbl.measuredAt)])
          ..limit(1))
        .getSingleOrNull();

    final dia = await (_db.select(_db.bodyEntries)
          ..where((tbl) =>
              tbl.userId.equals(_currentUserId) &
              (tbl.type.equals('blood_pressure_dia') | tbl.type.equals('diastolic_bp')) &
              tbl.deleted.equals(false))
          ..orderBy([(tbl) => drift.OrderingTerm.desc(tbl.measuredAt)])
          ..limit(1))
        .getSingleOrNull();

    if (sys == null && dia == null) return null;
    return {'sys': sys?.value, 'dia': dia?.value};
  }

  @override
  Stream<BodyEntry?> watchLatestBodyEntry(String type) {
    return (_db.select(_db.bodyEntries)
          ..where((tbl) =>
              tbl.userId.equals(_currentUserId) &
              tbl.type.equals(type) &
              tbl.deleted.equals(false))
          ..orderBy([(tbl) => drift.OrderingTerm.desc(tbl.measuredAt)])
          ..limit(1))
        .watchSingleOrNull();
  }

  @override
  Future<BodyEntry?> getLatestBodyEntry(String type) {
    return (_db.select(_db.bodyEntries)
          ..where((tbl) =>
              tbl.userId.equals(_currentUserId) &
              tbl.type.equals(type) &
              tbl.deleted.equals(false))
          ..orderBy([(tbl) => drift.OrderingTerm.desc(tbl.measuredAt)])
          ..limit(1))
        .getSingleOrNull();
  }

  @override
  Future<void> updateBodyEntry({
    required String id,
    required double value,
    required String unit,
    DateTime? measuredAt,
  }) async {
    await (_db.update(_db.bodyEntries)
          ..where((tbl) => tbl.id.equals(id) & tbl.userId.equals(_currentUserId)))
        .write(
      BodyEntriesCompanion(
        value: drift.Value(value),
        unit: drift.Value(unit),
        measuredAt: measuredAt != null ? drift.Value(measuredAt) : const drift.Value.absent(),
        isDirty: const drift.Value(true),
        updatedAt: drift.Value(DateTime.now()),
      ),
    );
  }

  @override
  Future<void> saveImportedRecords(List<ImportedHealthRecordsCompanion> records) async {
    if (records.isEmpty) return;
    await _db.batch((batch) {
      batch.insertAll(
        _db.importedHealthRecords,
        records,
        mode: drift.InsertMode.insertOrReplace,
      );
    });
  }

  @override
  Future<List<ImportedHealthRecord>> getImportedRecords({
    required String dataType,
    DateTime? start,
    DateTime? end,
    String? deviceType,
  }) async {
    final query = _db.select(_db.importedHealthRecords)
      ..where((tbl) => tbl.userId.equals(_currentUserId) & tbl.dataType.equals(dataType));

    if (start != null) {
      query.where((tbl) => tbl.startTime.isBiggerOrEqualValue(start));
    }
    if (end != null) {
      query.where((tbl) => tbl.endTime.isSmallerOrEqualValue(end));
    }
    if (deviceType != null) {
      query.where((tbl) => tbl.deviceType.equals(deviceType));
    }

    query.orderBy([(tbl) => drift.OrderingTerm.desc(tbl.startTime)]);
    return query.get();
  }

  @override
  Future<String> getPreferredHealthSource() async {
    final prefs = _prefs ?? await SharedPreferences.getInstance();
    return prefs.getString('preferred_health_source_$_currentUserId') ?? 'auto';
  }

  @override
  Future<void> setPreferredHealthSource(String source) async {
    final prefs = _prefs ?? await SharedPreferences.getInstance();
    await prefs.setString('preferred_health_source_$_currentUserId', source);
  }

  @override
  Stream<Target?> watchTargets() {
    return (_db.select(_db.targets)
          ..where((tbl) => tbl.userId.equals(_currentUserId) & tbl.deleted.equals(false))
          ..orderBy([(tbl) => drift.OrderingTerm.desc(tbl.createdAt)])
          ..limit(1))
        .watchSingleOrNull();
  }

  @override
  Future<Target?> getLatestTargets() async {
    return (_db.select(_db.targets)
          ..where((tbl) => tbl.userId.equals(_currentUserId) & tbl.deleted.equals(false))
          ..orderBy([(tbl) => drift.OrderingTerm.desc(tbl.createdAt)])
          ..limit(1))
        .getSingleOrNull();
  }

  @override
  Future<int> getStepTarget() async {
    final t = await getLatestTargets();
    return t?.steps ?? 10000;
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
}

