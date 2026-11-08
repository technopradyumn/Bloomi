import 'dart:async';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/food/data/local/food_local_data_source.dart';
import 'package:bloomi/features/food/data/network/food_remote_data_source.dart';
import 'package:bloomi/features/food/data/repositories/food_repository_impl.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';
import 'package:bloomi/features/food/presentation/pages/barcode_scan_page.dart';
import 'package:bloomi/services/billing/billing_service.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeBillingService implements BillingService {
  _FakeBillingService({bool initialPremium = false}) : _isPremium = initialPremium;

  bool _isPremium;
  final _controller = StreamController<bool>.broadcast();

  @override
  Stream<bool> get onPremiumChanged => _controller.stream;

  @override
  Future<bool> isPremium() async => _isPremium;

  @override
  Future<void> setPremium(bool val) async {
    _isPremium = val;
    _controller.add(val);
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late AppDatabase db;
  late FoodLocalDataSource localDataSource;
  late FoodRepository foodRepository;
  late _FakeBillingService fakeBillingService;

  setUp(() async {
    await sl.reset();
    db = AppDatabase(NativeDatabase.memory());
    localDataSource = FoodLocalDataSourceImpl(db);
    foodRepository = FoodRepositoryImpl(
      localDataSource: localDataSource,
      remoteDataSource: FoodRemoteDataSourceImpl(),
    );
    fakeBillingService = _FakeBillingService(initialPremium: false);

    sl.registerSingleton<AppDatabase>(db);
    sl.registerSingleton<FoodRepository>(foodRepository);
    sl.registerSingleton<BillingService>(fakeBillingService);
  });

  tearDown(() async {
    await db.close();
    await sl.reset();
  });

  test('Food list auto-seeds and returns items when query is empty', () async {
    // Before searching, foodItems table is empty
    final initialCount = await (db.selectOnly(db.foodItems)..addColumns([db.foodItems.id.count()]))
        .map((r) => r.read(db.foodItems.id.count()) ?? 0)
        .getSingle();
    expect(initialCount, equals(0));

    // searchFoods automatically calls ensureSeeded when foods are empty!
    final results = await foodRepository.searchFoods('');
    expect(results.isNotEmpty, isTrue);
    expect(results.length, greaterThanOrEqualTo(30));

    // Common staple items should be present
    final names = results.map((e) => e.name.toLowerCase()).toList();
    expect(names.any((n) => n.contains('phulka') || n.contains('paratha') || n.contains('rice')), isTrue);
  });

  testWidgets('BarcodeScanPage displays Premium paywall for free users', (tester) async {
    await fakeBillingService.setPremium(false);

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: BarcodeScanPage(isEmbedded: true),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Verify Premium Paywall text and unlock button are present
    expect(find.text('Bloomi Premium Feature'), findsOneWidget);
    expect(find.text('Barcode Scanner 🏷️'), findsOneWidget);
    expect(find.text('Unlock with Premium 👑'), findsOneWidget);
  });
}
