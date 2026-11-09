import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/widgets/step_target_sheet.dart';
import 'package:bloomi/features/health/data/local/health_local_data_source.dart';
import 'package:bloomi/features/health/data/network/health_remote_data_source.dart';
import 'package:bloomi/features/health/data/repositories/health_repository_impl.dart';
import 'package:bloomi/features/health/domain/entities/health_overview_entity.dart';
import 'package:drift/native.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _FakeHealthRemoteDataSource implements HealthRemoteDataSource {
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
    return HealthRemoteBundleResult(
      bundle: HealthDataBundleEntity.empty(),
      importedRecords: const [],
    );
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Step Target Feature & Repository Tests', () {
    late AppDatabase db;
    late HealthLocalDataSource localDataSource;
    late HealthRepositoryImpl repo;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      final prefs = await SharedPreferences.getInstance();
      db = AppDatabase(NativeDatabase.memory());
      localDataSource = HealthLocalDataSourceImpl(
        db,
        userIdProvider: () => 'test_user',
        prefs: prefs,
      );
      repo = HealthRepositoryImpl(
        localDataSource: localDataSource,
        remoteDataSource: _FakeHealthRemoteDataSource(),
        userIdProvider: () => 'test_user',
      );
    });

    tearDown(() async {
      await db.close();
    });

    test('Default step target is 10000 when no target configured', () async {
      final target = await repo.getStepTarget();
      expect(target, 10000);
    });

    test('Updating step target updates database and emits new value in stream', () async {
      await repo.updateStepTarget(8500);
      final updated = await repo.getStepTarget();
      expect(updated, 8500);

      // Verify second update
      await repo.updateStepTarget(12000);
      final second = await repo.getStepTarget();
      expect(second, 12000);
    });

    testWidgets('StepTargetSheet allows selecting preset and saving new target',
        (WidgetTester tester) async {
      int? savedTarget;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: StepTargetSheet(
              currentTarget: 10000,
              onTargetSaved: (val) async {
                savedTarget = val;
              },
            ),
          ),
        ),
      );

      // Initial value
      expect(find.text('10000'), findsOneWidget);

      // Tap on preset chip '8k steps'
      final chip = find.text('8k steps');
      expect(chip, findsOneWidget);
      await tester.tap(chip);
      await tester.pumpAndSettle();

      expect(find.text('8000'), findsOneWidget);

      // Tap 'Save Target'
      final saveBtn = find.text('Save Target');
      expect(saveBtn, findsOneWidget);
      await tester.tap(saveBtn);
      await tester.pumpAndSettle();

      expect(savedTarget, 8000);
    });

    testWidgets('StepTargetSheet stepper adjusts target by +/- 500',
        (WidgetTester tester) async {
      int? savedTarget;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: StepTargetSheet(
              currentTarget: 10000,
              onTargetSaved: (val) async {
                savedTarget = val;
              },
            ),
          ),
        ),
      );

      // Tap '+' button
      final plusBtn = find.byIcon(CupertinoIcons.add_circled);
      expect(plusBtn, findsOneWidget);
      await tester.tap(plusBtn);
      await tester.pumpAndSettle();

      expect(find.text('10500'), findsOneWidget);

      // Tap 'Save Target'
      await tester.tap(find.text('Save Target'));
      await tester.pumpAndSettle();

      expect(savedTarget, 10500);
    });
  });
}

