import 'dart:async';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/health/data/local/health_local_data_source.dart';
import 'package:bloomi/features/health/data/network/health_remote_data_source.dart';
import 'package:bloomi/features/health/domain/entities/health_overview_entity.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';

class HealthRepositoryImpl implements HealthRepository {
  final HealthLocalDataSource _localDataSource;
  final HealthRemoteDataSource _remoteDataSource;
  final String Function()? _userIdProvider;

  HealthDataBundleEntity? _cachedBundle;
  String? _cachedUserId;
  String? _cachedPreferredSource;
  DateTime? _lastFetchTime;

  HealthRepositoryImpl({
    required HealthLocalDataSource localDataSource,
    required HealthRemoteDataSource remoteDataSource,
    String Function()? userIdProvider,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _userIdProvider = userIdProvider;

  @override
  Future<HealthConnectAvailabilityStatus> getAvailability() =>
      _remoteDataSource.checkAvailability();

  @override
  Future<bool> hasPermissions() => _remoteDataSource.hasPermissions();

  @override
  Future<bool> requestPermissions() => _remoteDataSource.requestPermissions();

  @override
  Future<bool> installHealthConnect() => _remoteDataSource.installHealthConnect();

  @override
  Future<bool> openHealthConnectSettings() => _remoteDataSource.openHealthConnectSettings();

  @override
  Future<String> getPreferredHealthSource() => _localDataSource.getPreferredHealthSource();

  @override
  Future<void> setPreferredHealthSource(String source) async {
    await _localDataSource.setPreferredHealthSource(source);
    // Invalidate cache immediately on source switch
    _cachedBundle = null;
    _lastFetchTime = null;
    _cachedPreferredSource = source;
  }

  @override
  Future<HealthDataBundleEntity> getLatestBundle({bool forceRefresh = false}) async {
    final now = DateTime.now();
    final currentUid = _userIdProvider?.call() ?? 'default_user';
    final preferredSource = await _localDataSource.getPreferredHealthSource();

    // Invalidate cache if user or preferred source switched
    if (_cachedUserId != currentUid || _cachedPreferredSource != preferredSource) {
      _cachedBundle = null;
      _lastFetchTime = null;
      _cachedUserId = currentUid;
      _cachedPreferredSource = preferredSource;
    }

    // Cache for 15 seconds to prevent redundant spikes while allowing real-time steps
    final cacheValiditySeconds = (preferredSource.toLowerCase() == 'phone') ? 5 : 15;
    if (!forceRefresh &&
        _cachedBundle != null &&
        _lastFetchTime != null &&
        now.difference(_lastFetchTime!).inSeconds < cacheValiditySeconds) {
      return _cachedBundle!;
    }

    final result = await _remoteDataSource.fetchTodayBundle(
      useFallbackOnEmpty: false,
      preferredSource: preferredSource,
      userId: currentUid,
    );

    _cachedBundle = result.bundle;
    _cachedUserId = currentUid;
    _cachedPreferredSource = preferredSource;
    _lastFetchTime = now;

    // Persist imported records idempotently
    await _localDataSource.saveImportedRecords(result.importedRecords);

    return result.bundle;
  }

  @override
  Stream<List<BodyEntry>> watchBodyEntries({String? type, int? limit}) =>
      _localDataSource.watchBodyEntries(type: type, limit: limit);

  @override
  Future<List<BodyEntry>> getRecentBodyEntries({String? type, int limit = 20}) =>
      _localDataSource.getRecentBodyEntries(type: type, limit: limit);

  @override
  Stream<BodyEntry?> watchLatestBodyEntry(String type) =>
      _localDataSource.watchLatestBodyEntry(type);

  @override
  Future<BodyEntry?> getLatestBodyEntry(String type) =>
      _localDataSource.getLatestBodyEntry(type);

  @override
  Future<void> logBodyEntry({
    required String type,
    required double value,
    required String unit,
    DateTime? measuredAt,
    String? source,
  }) =>
      _localDataSource.insertBodyEntry(
        type: type,
        value: value,
        unit: unit,
        measuredAt: measuredAt,
        source: source,
      );

  @override
  Future<void> updateBodyEntry({
    required String id,
    required double value,
    required String unit,
    DateTime? measuredAt,
  }) =>
      _localDataSource.updateBodyEntry(
        id: id,
        value: value,
        unit: unit,
        measuredAt: measuredAt,
      );

  @override
  Future<void> softDeleteBodyEntry(String id) =>
      _localDataSource.softDeleteBodyEntry(id);

  @override
  Stream<List<WorkoutLog>> watchWorkoutLogs({DateTime? date}) =>
      _localDataSource.watchWorkoutLogs(date: date);

  @override
  Future<List<WorkoutLog>> getWorkoutLogsForDate(DateTime date) =>
      _localDataSource.getWorkoutLogsForDate(date);

  @override
  Future<void> logWorkout({
    required String type,
    required int durationMinutes,
    required double calories,
    DateTime? recordedAt,
    String? source,
  }) =>
      _localDataSource.insertWorkoutLog(
        type: type,
        durationMinutes: durationMinutes,
        calories: calories,
        recordedAt: recordedAt,
        source: source,
      );

  @override
  Future<void> softDeleteWorkoutLog(String id) =>
      _localDataSource.softDeleteWorkoutLog(id);

  @override
  Future<void> updateWorkoutLog({
    required String id,
    required String type,
    required int durationMinutes,
    required double calories,
    DateTime? recordedAt,
  }) =>
      _localDataSource.updateWorkoutLog(
        id: id,
        type: type,
        durationMinutes: durationMinutes,
        calories: calories,
        recordedAt: recordedAt,
      );

  @override
  Future<int> getStepTarget() => _localDataSource.getStepTarget();

  @override
  Future<void> updateStepTarget(int newStepTarget) =>
      _localDataSource.updateStepTarget(newStepTarget);

  @override
  Stream<int> watchStepTarget() =>
      _localDataSource.watchTargets().map((t) => t?.steps ?? 10000);

  @override
  Stream<HealthOverviewEntity> watchHealthOverview() {
    late StreamController<HealthOverviewEntity> controller;

    Future<HealthOverviewEntity> buildFromLocal({HealthDataBundleEntity? overrideBundle}) async {
      final bundle = overrideBundle ?? _cachedBundle ?? HealthDataBundleEntity.empty();
      final now = DateTime.now();
      final recentEntries = await _localDataSource.getRecentBodyEntries(limit: 20);
      final todayWorkouts = await _localDataSource.getWorkoutLogsForDate(now);
      final weightEntry = await _localDataSource.getLatestWeight();
      final bp = await _localDataSource.getLatestBloodPressure();
      final target = await _localDataSource.getLatestTargets();

      return HealthOverviewEntity(
        bundle: bundle,
        recentBodyEntries: recentEntries,
        todayWorkouts: todayWorkouts,
        latestWeightKg: weightEntry ?? bundle.weightKg ?? 0.0,
        latestSystolicBp: bp?['sys'] ?? bundle.systolicBp,
        latestDiastolicBp: bp?['dia'] ?? bundle.diastolicBp,
        stepGoal: target?.steps ?? 10000,
      );
    }

    void refreshFromLocal() async {
      if (controller.isClosed) return;
      try {
        final entity = await buildFromLocal();
        if (!controller.isClosed) {
          controller.add(entity);
        }
      } catch (_) {}
    }

    void syncInBackground() async {
      try {
        final freshBundle = await getLatestBundle();
        if (!controller.isClosed) {
          final updated = await buildFromLocal(overrideBundle: freshBundle);
          if (!controller.isClosed) {
            controller.add(updated);
          }
        }
      } catch (_) {}
    }

    controller = StreamController<HealthOverviewEntity>.broadcast(
      onListen: () {
        // 1. Emit local cached data immediately (zero delay)
        refreshFromLocal();
        // 2. Fetch fresh Health Connect data in background
        syncInBackground();
      },
    );

    final subBody = _localDataSource.watchBodyEntries(limit: 20).listen((_) => refreshFromLocal());
    final subTargets = _localDataSource.watchTargets().listen((_) => refreshFromLocal());
    final subWorkouts = _localDataSource.watchWorkoutLogs().listen((_) => refreshFromLocal());

    controller.onCancel = () {
      subBody.cancel();
      subTargets.cancel();
      subWorkouts.cancel();
    };

    return controller.stream;
  }
}

