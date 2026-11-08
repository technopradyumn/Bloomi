import 'dart:async';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/widgets/macro_bars.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/features/health/domain/entities/health_overview_entity.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:bloomi/features/home/domain/entities/home_dashboard_entity.dart';
import 'package:bloomi/features/home/domain/repositories/home_repository.dart';
import 'package:bloomi/features/insights/domain/repositories/insights_repository.dart';
import 'package:bloomi/features/onboarding/presentation/pages/permissions_page.dart';
import 'package:bloomi/features/plan/domain/repositories/plan_repository.dart';
import 'package:bloomi/features/settings/presentation/pages/widgets_page.dart';
import 'package:bloomi/features/surroundings/domain/entities/surroundings_entity.dart';
import 'package:bloomi/features/surroundings/domain/repositories/surroundings_repository.dart';
import 'package:bloomi/services/billing/billing_service.dart';
import 'package:bloomi/services/health/health_service.dart';
import 'package:bloomi/services/widget/widget_sync_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeBillingService implements BillingService {
  final _ctrl = StreamController<bool>.broadcast();
  @override
  Stream<bool> get onPremiumChanged => _ctrl.stream;
  @override
  Future<bool> isPremium() async => true;
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FakeHomeRepository implements HomeRepository {
  HomeDashboardEntity? _latestData;
  final _controller = StreamController<HomeDashboardEntity>.broadcast();

  @override
  Stream<HomeDashboardEntity> watchDashboardData({required String userName}) async* {
    if (_latestData != null) yield _latestData!;
    yield* _controller.stream;
  }

  @override
  Future<HomeDashboardEntity> getDashboardData({required String userName}) async {
    return _latestData ??
        const HomeDashboardEntity(
          greeting: 'Hello',
          userName: 'Alex',
          mascotState: MascotState.wave,
          targetCalories: 2000,
          consumedCalories: 0,
          protein: MacroData(name: 'Protein', currentGrams: 0, targetGrams: 70, color: AppColors.peach),
          carbs: MacroData(name: 'Carbs', currentGrams: 0, targetGrams: 210, color: AppColors.sky),
          fat: MacroData(name: 'Fat', currentGrams: 0, targetGrams: 48, color: AppColors.butter),
          fibre: MacroData(name: 'Fibre', currentGrams: 0, targetGrams: 24, color: AppColors.mint),
          targetWaterMl: 2500,
          consumedWaterMl: 0,
          streakDays: 0,
        );
  }

  void emitData(HomeDashboardEntity data) {
    _latestData = data;
    _controller.add(data);
  }

  void dispose() {
    _controller.close();
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FakePlanRepository implements PlanRepository {
  @override
  Future<Target> getTargets() async {
    return Target(
      id: 'target_1',
      userId: 'user_1',
      calories: 2000,
      protein: 70,
      carbs: 200,
      fat: 50,
      fibre: 25,
      waterMl: 2500,
      steps: 10000,
      sleepHours: 8,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      deleted: false,
      isDirty: false,
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FakeHealthRepository implements HealthRepository {
  double distanceMeters = 4800;
  int steps = 6420;

  @override
  Future<int> getStepTarget() async => 10000;

  @override
  Future<HealthDataBundleEntity> getLatestBundle({bool forceRefresh = false}) async {
    return HealthDataBundleEntity(
      steps: steps,
      heartRate: 72,
      restingHeartRate: 60,
      minHeartRate: 54,
      maxHeartRate: 120,
      activeCalories: 240,
      distanceMeters: distanceMeters,
      spo2Percentage: 98,
      sleepDuration: const Duration(hours: 7),
      lastUpdated: DateTime.now(),
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FakeSurroundingsRepository implements SurroundingsRepository {
  @override
  Future<SurroundingsEntity?> getSurroundingsData({bool forceRefresh = false}) async {
    return SurroundingsEntity(
      temperatureC: 28.0,
      feelsLikeC: 29.0,
      humidityPercent: 55,
      aqi: 42,
      pm25: 12.0,
      pm10: 22.0,
      uvIndex: 3.0,
      cityName: 'Downtown, Austin',
      locationName: 'Downtown, Austin',
      weatherCode: 0,
      fetchedAt: DateTime.now(),
      latitude: 30.26,
      longitude: -97.74,
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FakeInsightsRepository implements InsightsRepository {
  @override
  Future<int> getCurrentStreak() async => 5;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FakeHealthService implements HealthService {
  bool granted = false;
  HealthConnectAvailability availability = HealthConnectAvailability.available;

  @override
  Future<HealthConnectAvailability> checkHealthConnectAvailability() async => availability;

  @override
  Future<bool> hasPermissions() async => granted;

  @override
  Future<bool> requestPermissions() async {
    granted = true;
    return true;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late _FakeHomeRepository fakeHomeRepo;
  late _FakePlanRepository fakePlanRepo;
  late _FakeHealthRepository fakeHealthRepo;
  late _FakeSurroundingsRepository fakeSurroundingsRepo;
  late _FakeInsightsRepository fakeInsightsRepo;
  late _FakeBillingService fakeBillingService;
  late _FakeHealthService fakeHealthService;
  late WidgetSyncService widgetSyncService;

  setUp(() async {
    await sl.reset();

    fakeHomeRepo = _FakeHomeRepository();
    fakePlanRepo = _FakePlanRepository();
    fakeHealthRepo = _FakeHealthRepository();
    fakeSurroundingsRepo = _FakeSurroundingsRepository();
    fakeInsightsRepo = _FakeInsightsRepository();
    fakeBillingService = _FakeBillingService();
    fakeHealthService = _FakeHealthService();
    widgetSyncService = WidgetSyncService();

    sl.registerSingleton<HomeRepository>(fakeHomeRepo);
    sl.registerSingleton<PlanRepository>(fakePlanRepo);
    sl.registerSingleton<HealthRepository>(fakeHealthRepo);
    sl.registerSingleton<SurroundingsRepository>(fakeSurroundingsRepo);
    sl.registerSingleton<InsightsRepository>(fakeInsightsRepo);
    sl.registerSingleton<BillingService>(fakeBillingService);
    sl.registerSingleton<HealthService>(fakeHealthService);
    sl.registerSingleton<WidgetSyncService>(widgetSyncService);
  });

  tearDown(() {
    fakeHomeRepo.dispose();
  });

  testWidgets('PermissionsPage marks Health Connect as Mandatory and blocks completion if denied', (tester) async {
    fakeHealthService.granted = false;

    bool navigatedNext = false;
    await tester.pumpWidget(
      MaterialApp(
        home: PermissionsPage(
          onNext: () {
            navigatedNext = true;
          },
        ),
      ),
    );

    await tester.pumpAndSettle();

    // Verify Mandatory badge and title
    expect(find.textContaining('Google Health Connect (Mandatory)'), findsOneWidget);
    expect(find.text('Mandatory'), findsOneWidget);

    // Tap Continue without permission -> must NOT advance
    final continueButton = find.text('Continue to Your Plan');
    expect(continueButton, findsOneWidget);
    await tester.tap(continueButton);
    await tester.pumpAndSettle();

    expect(navigatedNext, isFalse);
  });

  testWidgets('WidgetsPage previews display real metrics matching mobile home widgets', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: WidgetsPage(),
      ),
    );

    await tester.pump();

    // Emit live dashboard data
    fakeHomeRepo.emitData(
      const HomeDashboardEntity(
        greeting: 'Good Morning',
        userName: 'Alex',
        mascotState: MascotState.happy,
        targetCalories: 2000,
        consumedCalories: 1450,
        protein: MacroData(name: 'Protein', currentGrams: 65, targetGrams: 90, color: AppColors.peach),
        carbs: MacroData(name: 'Carbs', currentGrams: 180, targetGrams: 220, color: AppColors.mint),
        fat: MacroData(name: 'Fat', currentGrams: 42, targetGrams: 60, color: AppColors.lilac),
        fibre: MacroData(name: 'Fibre', currentGrams: 22, targetGrams: 30, color: AppColors.sky),
        targetWaterMl: 2500,
        consumedWaterMl: 1800,
        streakDays: 4,
      ),
    );

    await tester.pumpAndSettle();

    // 1. Steps Widget preview
    expect(find.text('1. Steps Counter Widget'), findsOneWidget);
    expect(find.text('6420'), findsWidgets);
    expect(find.textContaining('4.8 km'), findsOneWidget);
    expect(find.textContaining('240 kcal'), findsOneWidget);

    // 2. Water Widget preview (scroll into view in ListView)
    final waterTitle = find.text('2. Water Tracker Widget');
    await tester.scrollUntilVisible(waterTitle, 300);
    expect(waterTitle, findsOneWidget);
    expect(find.text('1800'), findsOneWidget);
    expect(find.textContaining('ml / 2500 ml'), findsOneWidget);
    expect(find.textContaining('7 / 10 glasses'), findsOneWidget);
    expect(find.textContaining('700 ml left'), findsOneWidget);

    // 3. All-in-One Daily Hub Widget preview (scroll into view in ListView)
    final hubTitle = find.text('3. Main Daily Hub Widget');
    await tester.scrollUntilVisible(hubTitle, 300);
    expect(hubTitle, findsOneWidget);
    expect(find.text('28°C'), findsOneWidget);
    expect(find.text('· Good'), findsOneWidget);
    expect(find.text('Downtown, Austin'), findsOneWidget);
    expect(find.text('AQI 42'), findsOneWidget);
    expect(find.text('UV 3'), findsOneWidget);
    expect(find.text('1450 / 2000 kcal'), findsOneWidget);
    expect(find.text('65g'), findsOneWidget); // Protein
    expect(find.text('180g'), findsOneWidget); // Carbs
    expect(find.text('42g'), findsOneWidget); // Fat
    expect(find.text('22g'), findsOneWidget); // Fibre
  });

  test('WidgetSyncService fetches real data seamlessly for all three widgets', () async {
    fakeHomeRepo.emitData(
      const HomeDashboardEntity(
        greeting: 'Good Morning',
        userName: 'Alex',
        mascotState: MascotState.happy,
        targetCalories: 2000,
        consumedCalories: 1450,
        protein: MacroData(name: 'Protein', currentGrams: 65, targetGrams: 90, color: AppColors.peach),
        carbs: MacroData(name: 'Carbs', currentGrams: 180, targetGrams: 220, color: AppColors.mint),
        fat: MacroData(name: 'Fat', currentGrams: 42, targetGrams: 60, color: AppColors.lilac),
        fibre: MacroData(name: 'Fibre', currentGrams: 22, targetGrams: 30, color: AppColors.sky),
        targetWaterMl: 2500,
        consumedWaterMl: 1800,
        streakDays: 4,
      ),
    );

    final syncData = await widgetSyncService.fetchRealWidgetData();

    expect(syncData.consumedKcal, equals(1450));
    expect(syncData.targetKcal, equals(2000));
    expect(syncData.waterMl, equals(1800));
    expect(syncData.targetWaterMl, equals(2500));
    expect(syncData.steps, equals(6420));
    expect(syncData.targetSteps, equals(10000));
    expect(syncData.protein, equals(65.0));
    expect(syncData.carbs, equals(180.0));
    expect(syncData.fat, equals(42.0));
    expect(syncData.fibre, equals(22.0));
    expect(syncData.location, equals('Downtown, Austin'));
    expect(syncData.weatherTemp, equals('28°C'));
    expect(syncData.weatherCondition, equals('Good'));
    expect(syncData.aqi, equals(42));
    expect(syncData.uvIndex, equals(3));
  });

  testWidgets('WidgetsPage previews format distance in meters when under 1 km (<1000m)', (tester) async {
    fakeHealthRepo.distanceMeters = 650;
    fakeHealthRepo.steps = 900;

    await tester.pumpWidget(
      const MaterialApp(
        home: WidgetsPage(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('1. Steps Counter Widget'), findsOneWidget);
    expect(find.text('900'), findsWidgets);
    // Under 1 km should show "650 m", NOT "0.7 km" or "0.6 km"
    expect(find.textContaining('650 m'), findsOneWidget);
  });

  test('WidgetSyncService reflects real personalized calorie and hydration targets without fallback freeze', () async {
    fakeHomeRepo.emitData(
      const HomeDashboardEntity(
        greeting: 'Good Afternoon',
        userName: 'Alex',
        mascotState: MascotState.happy,
        targetCalories: 1850,
        consumedCalories: 520,
        protein: MacroData(name: 'Protein', currentGrams: 40, targetGrams: 80, color: AppColors.peach),
        carbs: MacroData(name: 'Carbs', currentGrams: 110, targetGrams: 200, color: AppColors.mint),
        fat: MacroData(name: 'Fat', currentGrams: 20, targetGrams: 50, color: AppColors.lilac),
        fibre: MacroData(name: 'Fibre', currentGrams: 12, targetGrams: 26, color: AppColors.sky),
        targetWaterMl: 2300,
        consumedWaterMl: 750,
        streakDays: 5,
      ),
    );

    final syncData = await widgetSyncService.fetchRealWidgetData();

    // Verify calories (consumed & target)
    expect(syncData.consumedKcal, equals(520));
    expect(syncData.targetKcal, equals(1850));
    expect(syncData.remainingKcal, equals(1330));

    // Verify hydration (consumed & target)
    expect(syncData.waterMl, equals(750));
    expect(syncData.targetWaterMl, equals(2300));
  });
}
