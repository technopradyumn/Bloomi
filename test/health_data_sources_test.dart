import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/health/data/local/health_local_data_source.dart';
import 'package:bloomi/features/health/data/network/health_remote_data_source.dart';
import 'package:bloomi/features/health/data/repositories/health_repository_impl.dart';
import 'package:bloomi/features/health/domain/entities/health_overview_entity.dart';
import 'package:bloomi/services/health/health_service.dart';
import 'package:drift/drift.dart' as drift;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:health/health.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Health Connect Multi-Device Deduplication (Phone + Watch)', () {
    final now = DateTime.now();
    final walkStart = DateTime(now.year, now.month, now.day, 10, 0);
    final walkEnd = DateTime(now.year, now.month, now.day, 10, 15);

    final watchPoint = HealthDataPoint(
      uuid: 'watch_step_1',
      value: NumericHealthValue(numericValue: 500),
      type: HealthDataType.STEPS,
      unit: HealthDataUnit.COUNT,
      dateFrom: walkStart,
      dateTo: walkEnd,
      sourcePlatform: HealthPlatformType.googleHealthConnect,
      sourceDeviceId: 'galaxy_watch_6',
      sourceId: 'com.sec.android.app.shealth',
      sourceName: 'Samsung Health Galaxy Watch',
    );

    final phonePoint = HealthDataPoint(
      uuid: 'phone_step_1',
      value: NumericHealthValue(numericValue: 480),
      type: HealthDataType.STEPS,
      unit: HealthDataUnit.COUNT,
      dateFrom: walkStart,
      dateTo: walkEnd,
      sourcePlatform: HealthPlatformType.googleHealthConnect,
      sourceDeviceId: 'pixel_8_pro',
      sourceId: 'com.google.android.apps.fitness',
      sourceName: 'Google Fit Phone',
    );

    test('1. Phone and watch both recording the same walk gives a single (not doubled) step count', () {
      final points = [phonePoint, watchPoint];

      // Under Auto mode, overlapping phone window is discarded in favor of watch
      final result = HealthService.deduplicateCumulativeRecords(
        points,
        preferredSource: 'auto',
      );

      expect(result.totalValue.toInt(), 500);
      expect(result.selectedPoints.length, 1);
      expect(result.selectedPoints.first.sourceDeviceId, 'galaxy_watch_6');
      expect(result.sourceLabel.contains('Galaxy Watch'), isTrue);
    });

    test('2. With the watch disconnected the app falls back to phone data', () {
      final points = [phonePoint];

      // When watch is disconnected (no watch points), Auto falls back to phone points
      final result = HealthService.deduplicateCumulativeRecords(
        points,
        preferredSource: 'auto',
      );

      expect(result.totalValue.toInt(), 480);
      expect(result.selectedPoints.length, 1);
      expect(result.selectedPoints.first.sourceDeviceId, 'pixel_8_pro');
      expect(result.sourceLabel.contains('Google Fit') || result.sourceLabel.contains('Phone'), isTrue);
    });

    test('3. Non-overlapping time windows are preserved in Auto mode without combining same window', () {
      final afternoonStart = DateTime(now.year, now.month, now.day, 14, 0);
      final afternoonEnd = DateTime(now.year, now.month, now.day, 14, 20);

      final phoneAfternoonPoint = HealthDataPoint(
        uuid: 'phone_step_2',
        value: NumericHealthValue(numericValue: 600),
        type: HealthDataType.STEPS,
        unit: HealthDataUnit.COUNT,
        dateFrom: afternoonStart,
        dateTo: afternoonEnd,
        sourcePlatform: HealthPlatformType.googleHealthConnect,
        sourceDeviceId: 'pixel_8_pro',
        sourceId: 'com.google.android.apps.fitness',
        sourceName: 'Google Fit Phone',
      );

      // Morning: both watch (500) and phone (480) recorded.
      // Afternoon: only phone (600) recorded.
      final points = [watchPoint, phonePoint, phoneAfternoonPoint];

      final result = HealthService.deduplicateCumulativeRecords(
        points,
        preferredSource: 'auto',
      );

      // Total = 500 (morning watch) + 600 (afternoon phone fallback) = 1100
      expect(result.totalValue.toInt(), 1100);
      expect(result.selectedPoints.length, 2);
    });

    test('4. Switching preferred source changes displayed value', () {
      final points = [phonePoint, watchPoint];

      final autoResult = HealthService.deduplicateCumulativeRecords(points, preferredSource: 'auto');
      final watchResult = HealthService.deduplicateCumulativeRecords(points, preferredSource: 'watch');
      final phoneResult = HealthService.deduplicateCumulativeRecords(points, preferredSource: 'phone');

      expect(autoResult.totalValue.toInt(), 500);
      expect(watchResult.totalValue.toInt(), 500);
      expect(phoneResult.totalValue.toInt(), 480);
    });
  });

  group('HealthRepository & Database Idempotence & Multi-Source Storage', () {
    late AppDatabase db;
    late HealthLocalDataSource localDataSource;
    String currentUserId = 'user_1';

    final now = DateTime.now();
    final walkStart = DateTime(now.year, now.month, now.day, 10, 0);
    final walkEnd = DateTime(now.year, now.month, now.day, 10, 15);

    final watchPoint = HealthDataPoint(
      uuid: 'watch_step_1',
      value: NumericHealthValue(numericValue: 500),
      type: HealthDataType.STEPS,
      unit: HealthDataUnit.COUNT,
      dateFrom: walkStart,
      dateTo: walkEnd,
      sourcePlatform: HealthPlatformType.googleHealthConnect,
      sourceDeviceId: 'galaxy_watch_6',
      sourceId: 'com.sec.android.app.shealth',
      sourceName: 'Samsung Health Galaxy Watch',
    );

    final phonePoint = HealthDataPoint(
      uuid: 'phone_step_1',
      value: NumericHealthValue(numericValue: 480),
      type: HealthDataType.STEPS,
      unit: HealthDataUnit.COUNT,
      dateFrom: walkStart,
      dateTo: walkEnd,
      sourcePlatform: HealthPlatformType.googleHealthConnect,
      sourceDeviceId: 'pixel_8_pro',
      sourceId: 'com.google.android.apps.fitness',
      sourceName: 'Google Fit Phone',
    );

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      final prefs = await SharedPreferences.getInstance();
      db = AppDatabase(NativeDatabase.memory());
      localDataSource = HealthLocalDataSourceImpl(
        db,
        userIdProvider: () => currentUserId,
        prefs: prefs,
      );
    });

    tearDown(() async {
      await db.close();
    });

    test('5. Re-reading Health Connect data is idempotent (no duplicate stored rows)', () async {
      final fakeRemote = _FakeHealthRemoteDataSource(points: [watchPoint, phonePoint]);
      final repo = HealthRepositoryImpl(
        localDataSource: localDataSource,
        remoteDataSource: fakeRemote,
        userIdProvider: () => currentUserId,
      );

      // First fetch
      final bundle1 = await repo.getLatestBundle(forceRefresh: true);
      expect(bundle1.steps, 500);

      final initialStored = await db.select(db.importedHealthRecords).get();
      expect(initialStored.length, 2); // 1 watch record + 1 phone record

      // Re-read / second sync
      final bundle2 = await repo.getLatestBundle(forceRefresh: true);
      expect(bundle2.steps, 500);

      final secondStored = await db.select(db.importedHealthRecords).get();
      expect(secondStored.length, 2); // Still exactly 2 rows! No duplicates created.
    });

    test('6. Switching preferred source changes displayed value without creating duplicate stored rows', () async {
      final fakeRemote = _FakeHealthRemoteDataSource(points: [watchPoint, phonePoint]);
      final repo = HealthRepositoryImpl(
        localDataSource: localDataSource,
        remoteDataSource: fakeRemote,
        userIdProvider: () => currentUserId,
      );

      // Default: auto -> 500 steps
      final autoBundle = await repo.getLatestBundle(forceRefresh: true);
      expect(autoBundle.steps, 500);

      // Switch to phone
      await repo.setPreferredHealthSource('phone');
      final phoneBundle = await repo.getLatestBundle();
      expect(phoneBundle.steps, 480);

      // Switch to watch
      await repo.setPreferredHealthSource('watch');
      final watchBundle = await repo.getLatestBundle();
      expect(watchBundle.steps, 500);

      // Verify stored rows remained intact and never duplicated
      final stored = await db.select(db.importedHealthRecords).get();
      expect(stored.length, 2);
    });

    test('7. Multi-user isolation: User 2 data is stored under User 2 and never leaks into User 1', () async {
      final fakeRemote = _FakeHealthRemoteDataSource(points: [watchPoint]);
      final repo = HealthRepositoryImpl(
        localDataSource: localDataSource,
        remoteDataSource: fakeRemote,
        userIdProvider: () => currentUserId,
      );

      // User 1 fetches data
      currentUserId = 'user_1';
      await repo.getLatestBundle(forceRefresh: true);

      // User 2 logs in and fetches data
      currentUserId = 'user_2';
      await repo.getLatestBundle(forceRefresh: true);

      final user1Records = await (db.select(db.importedHealthRecords)..where((t) => t.userId.equals('user_1'))).get();
      final user2Records = await (db.select(db.importedHealthRecords)..where((t) => t.userId.equals('user_2'))).get();

      expect(user1Records.length, 1);
      expect(user2Records.length, 1);
      expect(user1Records.first.userId, 'user_1');
      expect(user2Records.first.userId, 'user_2');
      expect(user1Records.first.id.startsWith('user_1_'), isTrue);
      expect(user2Records.first.id.startsWith('user_2_'), isTrue);
    });
  });
}

class _FakeHealthRemoteDataSource implements HealthRemoteDataSource {
  final List<HealthDataPoint> points;

  _FakeHealthRemoteDataSource({required this.points});

  @override
  Future<HealthConnectAvailabilityStatus> checkAvailability() async =>
      HealthConnectAvailabilityStatus.available;

  @override
  Future<bool> hasPermissions() async => true;

  @override
  Future<bool> requestPermissions() async => true;

  @override
  Future<bool> installHealthConnect() async => true;

  @override
  Future<bool> openHealthConnectSettings() async => true;

  @override
  Future<HealthRemoteBundleResult> fetchTodayBundle({
    bool useFallbackOnEmpty = false,
    String preferredSource = 'auto',
    String? userId,
  }) async {
    final dedup = HealthService.deduplicateCumulativeRecords(
      points,
      preferredSource: preferredSource,
      metricName: 'Steps',
    );

    final bundle = HealthDataBundleEntity(
      steps: dedup.totalValue.toInt(),
      heartRate: 70,
      restingHeartRate: 65,
      minHeartRate: 60,
      maxHeartRate: 100,
      activeCalories: 300,
      distanceMeters: dedup.totalValue * 0.762,
      spo2Percentage: 99,
      sleepDuration: const Duration(hours: 8),
      lastUpdated: DateTime.now(),
      primarySource: dedup.sourceLabel,
      stepsSourceLabel: dedup.sourceLabel,
      preferredSource: preferredSource,
    );

    final effectiveUid = userId ?? 'default_user';
    final now = DateTime.now();
    final records = points.map((p) {
      final dev = HealthService.classifyDevice(p);
      final srcName = HealthService.formatSourceDisplayName(p.sourceName, dev);
      final id = '${effectiveUid}_${p.type.name.toLowerCase()}_${p.sourceId}_${p.dateFrom.millisecondsSinceEpoch}_${p.dateTo.millisecondsSinceEpoch}';
      return ImportedHealthRecordsCompanion(
        id: drift.Value(id),
        userId: drift.Value(effectiveUid),
        dataType: drift.Value(p.type.name.toLowerCase()),
        source: drift.Value(p.sourceId),
        sourceName: drift.Value(srcName),
        deviceType: drift.Value(dev.name),
        startTime: drift.Value(p.dateFrom),
        endTime: drift.Value(p.dateTo),
        value: drift.Value((p.value as NumericHealthValue).numericValue.toDouble()),
        isDirty: const drift.Value(false),
        createdAt: drift.Value(now),
        updatedAt: drift.Value(now),
      );
    }).toList();

    return HealthRemoteBundleResult(
      bundle: bundle,
      importedRecords: records,
    );
  }
}
