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
import 'package:bloomi/features/plan/domain/repositories/plan_repository.dart';
import 'package:bloomi/features/settings/presentation/pages/wear_os_page.dart';
import 'package:bloomi/features/settings/presentation/pages/widgets_page.dart';
import 'package:bloomi/features/surroundings/domain/entities/surroundings_entity.dart';
import 'package:bloomi/features/surroundings/domain/repositories/surroundings_repository.dart';
import 'package:bloomi/services/billing/billing_service.dart';
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
  HomeDashboardEntity? _latest;
  final _controller = StreamController<HomeDashboardEntity>.broadcast();

  @override
  Stream<HomeDashboardEntity> watchDashboardData({required String userName}) {
    return _controller.stream;
  }

  @override
  Future<HomeDashboardEntity> getDashboardData({required String userName}) async {
    return _latest ??
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
    _latest = data;
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
      calories: 2200,
      protein: 90,
      carbs: 260,
      fat: 70,
      fibre: 28,
      waterMl: 2800,
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
  @override
  Future<int> getStepTarget() async => 10000;

  @override
  Future<HealthDataBundleEntity> getLatestBundle({bool forceRefresh = false}) async {
    return HealthDataBundleEntity(
      steps: 7540,
      heartRate: 74,
      restingHeartRate: 62,
      minHeartRate: 55,
      maxHeartRate: 130,
      activeCalories: 320,
      distanceMeters: 5600,
      spo2Percentage: 98,
      sleepDuration: const Duration(hours: 7, minutes: 35),
      lastUpdated: DateTime.now(),
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FakeInsightsRepository implements InsightsRepository {
  @override
  Future<int> getCurrentStreak() async => 7;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FakeSurroundingsRepository implements SurroundingsRepository {
  @override
  CityLocationEntity get selectedCity =>
      const CityLocationEntity(name: 'San Francisco', latitude: 37.77, longitude: -122.41);

  @override
  void selectCity(CityLocationEntity city) {}

  @override
  Future<SurroundingsEntity?> getSurroundingsData({bool forceRefresh = false}) async {
    return SurroundingsEntity(
      temperatureC: 22.5,
      feelsLikeC: 23.0,
      humidityPercent: 58,
      uvIndex: 4.8,
      aqi: 42,
      cityName: 'San Francisco',
      locationName: 'San Francisco Downtown',
      weatherCode: 0,
      fetchedAt: DateTime.now(),
      windSpeedKmH: 14.0,
      pm25: 12.0,
      pm10: 24.0,
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late _FakeHomeRepository fakeHomeRepo;
  late _FakePlanRepository fakePlanRepo;
  late _FakeHealthRepository fakeHealthRepo;
  late _FakeInsightsRepository fakeInsightsRepo;
  late _FakeSurroundingsRepository fakeSurroundingsRepo;

  setUp(() {
    fakeHomeRepo = _FakeHomeRepository();
    fakePlanRepo = _FakePlanRepository();
    fakeHealthRepo = _FakeHealthRepository();
    fakeInsightsRepo = _FakeInsightsRepository();
    fakeSurroundingsRepo = _FakeSurroundingsRepository();

    if (sl.isRegistered<HomeRepository>()) sl.unregister<HomeRepository>();
    if (sl.isRegistered<PlanRepository>()) sl.unregister<PlanRepository>();
    if (sl.isRegistered<HealthRepository>()) sl.unregister<HealthRepository>();
    if (sl.isRegistered<InsightsRepository>()) sl.unregister<InsightsRepository>();
    if (sl.isRegistered<SurroundingsRepository>()) sl.unregister<SurroundingsRepository>();
    if (sl.isRegistered<BillingService>()) sl.unregister<BillingService>();

    sl.registerSingleton<HomeRepository>(fakeHomeRepo);
    sl.registerSingleton<PlanRepository>(fakePlanRepo);
    sl.registerSingleton<HealthRepository>(fakeHealthRepo);
    sl.registerSingleton<InsightsRepository>(fakeInsightsRepo);
    sl.registerSingleton<SurroundingsRepository>(fakeSurroundingsRepo);
    sl.registerSingleton<BillingService>(_FakeBillingService());
  });

  tearDown(() {
    fakeHomeRepo.dispose();
  });

  HomeDashboardEntity createSampleDashboard() {
    return const HomeDashboardEntity(
      greeting: 'Good morning, Friend!',
      userName: 'Friend',
      mascotState: MascotState.happy,
      targetCalories: 2000,
      consumedCalories: 1450,
      protein: MacroData(name: 'Protein', currentGrams: 75, targetGrams: 90, color: Colors.green),
      carbs: MacroData(name: 'Carbs', currentGrams: 160, targetGrams: 250, color: Colors.amber),
      fat: MacroData(name: 'Fat', currentGrams: 45, targetGrams: 65, color: Colors.orange),
      fibre: MacroData(name: 'Fibre', currentGrams: 24, targetGrams: 30, color: Colors.purple),
      targetWaterMl: 2500,
      consumedWaterMl: 1750,
      streakDays: 7,
    );
  }

  testWidgets('WidgetsPage renders 3 core real-data widgets and has NO sync button', (tester) async {
    tester.view.physicalSize = const Size(1080, 4000);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    await tester.pumpWidget(
      const MaterialApp(
        home: WidgetsPage(),
      ),
    );

    // Emit live local data
    fakeHomeRepo.emitData(createSampleDashboard());
    await tester.pump(const Duration(milliseconds: 300));
    await tester.pump(const Duration(milliseconds: 300));

    // 1. Verify NO sync button exists on the screen
    expect(find.text('Sync'), findsNothing);
    expect(find.text('Sync with Watch'), findsNothing);
    expect(find.text('Sync Entire Data Now'), findsNothing);

    // 2. Verify 3 featured widgets by title
    expect(find.text('1. Steps Counter Widget'), findsOneWidget);
    expect(find.text('2. Water Tracker Widget'), findsOneWidget);
    expect(find.text('3. Main Daily Hub Widget'), findsOneWidget);

    // 3. Verify real metrics are rendered in the widgets
    expect(find.text('Step Counter'), findsOneWidget);
    expect(find.text('Hydration Tracker'), findsOneWidget);
    expect(find.text('Daily Nutrients'), findsOneWidget);
  });

  testWidgets('WearOsPage renders interactive smartwatch simulator and has NO sync button', (tester) async {
    tester.view.physicalSize = const Size(1080, 4000);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    await tester.pumpWidget(
      const MaterialApp(
        home: WearOsPage(),
      ),
    );

    fakeHomeRepo.emitData(createSampleDashboard());
    await tester.pump(const Duration(milliseconds: 300));
    await tester.pump(const Duration(milliseconds: 300));

    // 1. Verify NO manual sync button exists on the screen
    expect(find.text('Sync with Watch'), findsNothing);
    expect(find.text('Syncing...'), findsNothing);

    // 2. Verify status badge
    expect(find.text('Wear DataLayer Auto-Live'), findsOneWidget);
    expect(find.text('Wrist-First Standalone App'), findsOneWidget);

    // 3. Verify segmented control tabs
    expect(find.text('Watch Faces'), findsOneWidget);
    expect(find.text('Micro-Screens'), findsOneWidget);
    expect(find.text('Tiles (5)'), findsOneWidget);
    expect(find.text('Complications'), findsOneWidget);

    // 4. Tap on Micro-Screens tab and verify items appear
    await tester.tap(find.text('Micro-Screens'));
    await tester.pump(const Duration(milliseconds: 300));

    expect(find.text('1. Ambient Walk Dial'), findsOneWidget);
    expect(find.text('2. One-Tap Water Logger'), findsOneWidget);
    expect(find.text('3. Live Pulse & PPG Sensor'), findsOneWidget);
    expect(find.text('4. Streak & Goal Bloom'), findsOneWidget);

    // 5. Tap on Tiles tab and verify tiles appear
    await tester.tap(find.text('Tiles (5)'));
    await tester.pump(const Duration(milliseconds: 300));

    expect(find.text('Tile 1: Daily Activity Rings'), findsOneWidget);
    expect(find.text('Tile 2: Quick Hydration Boost'), findsOneWidget);
    expect(find.text('Tile 3: Vitals & Pulse'), findsOneWidget);
    expect(find.text('Tile 4: Weather & Air Quality'), findsOneWidget);
    expect(find.text('Tile 5: Mascot Mood & Encouragement'), findsOneWidget);
  });
}
