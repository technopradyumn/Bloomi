import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/health/domain/entities/health_overview_entity.dart';
import 'package:bloomi/services/health/health_service.dart';
import 'package:drift/drift.dart' as drift;
import 'package:health/health.dart';

class HealthRemoteBundleResult {
  final HealthDataBundleEntity bundle;
  final List<ImportedHealthRecordsCompanion> importedRecords;

  const HealthRemoteBundleResult({
    required this.bundle,
    required this.importedRecords,
  });
}

abstract class HealthRemoteDataSource {
  Future<HealthConnectAvailabilityStatus> checkAvailability();
  Future<bool> hasPermissions();
  Future<bool> requestPermissions();
  Future<bool> installHealthConnect();
  Future<bool> openHealthConnectSettings();
  Future<HealthRemoteBundleResult> fetchTodayBundle({
    bool useFallbackOnEmpty = false,
    String preferredSource = 'auto',
    String? userId,
  });
}

class HealthRemoteDataSourceImpl implements HealthRemoteDataSource {
  final HealthService _healthService;

  HealthRemoteDataSourceImpl(this._healthService);

  @override
  Future<HealthConnectAvailabilityStatus> checkAvailability() async {
    final status = await _healthService.checkHealthConnectAvailability();
    switch (status) {
      case HealthConnectAvailability.available:
        return HealthConnectAvailabilityStatus.available;
      case HealthConnectAvailability.notInstalled:
        return HealthConnectAvailabilityStatus.notInstalled;
      case HealthConnectAvailability.updateRequired:
        return HealthConnectAvailabilityStatus.updateRequired;
      case HealthConnectAvailability.unsupportedPlatform:
        return HealthConnectAvailabilityStatus.unsupportedPlatform;
    }
  }

  @override
  Future<bool> hasPermissions() => _healthService.hasPermissions();

  @override
  Future<bool> requestPermissions() => _healthService.requestPermissions();

  @override
  Future<bool> installHealthConnect() => _healthService.installHealthConnect();

  @override
  Future<bool> openHealthConnectSettings() => _healthService.openHealthConnectSettings();

  @override
  Future<HealthRemoteBundleResult> fetchTodayBundle({
    bool useFallbackOnEmpty = false,
    String preferredSource = 'auto',
    String? userId,
  }) async {
    final bundle = await _healthService.fetchTodayBundle(
      useFallbackOnEmpty: useFallbackOnEmpty,
      preferredSource: preferredSource,
    );

    final entity = HealthDataBundleEntity(
      steps: bundle.steps,
      heartRate: bundle.heartRate,
      restingHeartRate: bundle.restingHeartRate,
      minHeartRate: bundle.minHeartRate,
      maxHeartRate: bundle.maxHeartRate,
      activeCalories: bundle.activeCalories,
      distanceMeters: bundle.distanceMeters,
      spo2Percentage: bundle.spo2Percentage,
      weightKg: bundle.weightKg,
      systolicBp: bundle.systolicBp,
      diastolicBp: bundle.diastolicBp,
      sleepDuration: bundle.sleepDuration,
      sleepBedtime: bundle.sleepBedtime,
      sleepWakeTime: bundle.sleepWakeTime,
      sleepStages: bundle.sleepStages,
      primarySource: bundle.primarySource,
      stepsSourceLabel: bundle.stepsSourceLabel,
      distanceSourceLabel: bundle.distanceSourceLabel,
      caloriesSourceLabel: bundle.caloriesSourceLabel,
      preferredSource: bundle.preferredSource,
      lastUpdated: bundle.lastUpdated,
    );

    final effectiveUid = userId ?? 'default_user';
    final now = DateTime.now();
    final List<ImportedHealthRecordsCompanion> records = [];

    for (final p in bundle.rawPoints) {
      final dev = HealthService.classifyDevice(p);
      final srcName = HealthService.formatSourceDisplayName(p.sourceName, dev);
      double val = 0.0;
      if (p.value is NumericHealthValue) {
        val = (p.value as NumericHealthValue).numericValue.toDouble();
      }
      final dType = p.type.name.toLowerCase();
      final src = p.sourceId.isNotEmpty ? p.sourceId : p.sourceName;
      final id = '${effectiveUid}_${dType}_${src}_${p.dateFrom.millisecondsSinceEpoch}_${p.dateTo.millisecondsSinceEpoch}';

      records.add(
        ImportedHealthRecordsCompanion(
          id: drift.Value(id),
          userId: drift.Value(effectiveUid),
          dataType: drift.Value(dType),
          source: drift.Value(src),
          sourceName: drift.Value(srcName),
          deviceType: drift.Value(dev.name),
          startTime: drift.Value(p.dateFrom),
          endTime: drift.Value(p.dateTo),
          value: drift.Value(val),
          isDirty: const drift.Value(false),
          createdAt: drift.Value(now),
          updatedAt: drift.Value(now),
        ),
      );
    }

    return HealthRemoteBundleResult(
      bundle: entity,
      importedRecords: records,
    );
  }
}

