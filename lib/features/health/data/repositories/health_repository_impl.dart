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
  Stream<List<BodyEntry>> watchBodyEntries({String? type}) =>
      _localDataSource.watchBodyEntries(type: type);

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
  }) =>
      _localDataSource.updateWorkoutLog(
        id: id,
        type: type,
        durationMinutes: durationMinutes,
        calories: calories,
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

    void refresh() async {
      if (controller.isClosed) return;
      try {
        var bundle = await getLatestBundle();
        if (bundle.steps == 0) {
          bundle = await getLatestBundle(forceRefresh: true);
        }
        final now = DateTime.now();
        final recentEntries = await _localDataSource.watchBodyEntries().first;
        final todayWorkouts = await _localDataSource.getWorkoutLogsForDate(now);
        final weightEntry = await _localDataSource.getLatestWeight();
        final bp = await _localDataSource.getLatestBloodPressure();
        final target = await _localDataSource.getLatestTargets();

        if (!controller.isClosed) {
          controller.add(HealthOverviewEntity(
            bundle: bundle,
            recentBodyEntries: recentEntries,
            todayWorkouts: todayWorkouts,
            latestWeightKg: weightEntry ?? bundle.weightKg ?? 0.0,
            latestSystolicBp: bp?['sys'] ?? bundle.systolicBp,
            latestDiastolicBp: bp?['dia'] ?? bundle.diastolicBp,
            stepGoal: target?.steps ?? 10000,
          ));
        }
      } catch (_) {}
    }

    controller = StreamController<HealthOverviewEntity>(
      onListen: () {
        refresh();
      },
    );

    final subBody = _localDataSource.watchBodyEntries().listen((_) => refresh());
    final subTargets = _localDataSource.watchTargets().listen((_) => refresh());
    final subWorkouts = _localDataSource.watchWorkoutLogs().listen((_) => refresh());

    controller.onCancel = () {
      subBody.cancel();
      subTargets.cancel();
      subWorkouts.cancel();
    };

    return controller.stream;
  }
}

