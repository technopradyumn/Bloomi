import 'dart:async';
import 'package:bloomi/app/app.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/features/auth/domain/entities/auth_user_entity.dart';
import 'package:bloomi/features/auth/domain/repositories/auth_repository.dart';
import 'package:bloomi/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:bloomi/features/settings/presentation/pages/premium_paywall_page.dart';
import 'package:bloomi/services/billing/billing_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:upgrader/upgrader.dart';

class _FakeAuthRepository implements AuthRepository {
  final _controller = StreamController<AuthUserEntity?>.broadcast();

  @override
  String get currentUserId => 'test_user';

  @override
  Stream<AuthUserEntity?> get authStateChanges => _controller.stream;

  @override
  AuthUserEntity? getCachedUserSync() => const AuthUserEntity(
        id: 'test_user',
        email: 'test@example.com',
        displayName: 'Test User',
        hasCompletedOnboarding: true,
      );

  @override
  Future<AuthUserEntity?> checkSession() async => getCachedUserSync();

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FakeInAppPurchase implements InAppPurchase {
  final _controller = StreamController<List<PurchaseDetails>>.broadcast();

  @override
  Stream<List<PurchaseDetails>> get purchaseStream => _controller.stream;

  @override
  Future<bool> isAvailable() async => true;

  @override
  Future<ProductDetailsResponse> queryProductDetails(Set<String> identifiers) async {
    return ProductDetailsResponse(
      productDetails: [
        ProductDetails(
          id: 'bloomi_premium_monthly',
          title: 'Monthly Plan',
          description: 'Monthly Bloomi Premium subscription',
          price: '\$2.99',
          rawPrice: 2.99,
          currencyCode: 'USD',
        ),
      ],
      notFoundIDs: [],
    );
  }

  @override
  Future<bool> buyNonConsumable({required PurchaseParam purchaseParam}) async {
    _controller.add([
      PurchaseDetails(
        productID: purchaseParam.productDetails.id,
        verificationData: PurchaseVerificationData(
          localVerificationData: 'local',
          serverVerificationData: 'server',
          source: 'test',
        ),
        transactionDate: DateTime.now().millisecondsSinceEpoch.toString(),
        status: PurchaseStatus.purchased,
      ),
    ]);
    return true;
  }

  @override
  Future<void> restorePurchases({String? applicationUserName}) async {
    _controller.add([
      PurchaseDetails(
        productID: 'bloomi_premium_yearly',
        verificationData: PurchaseVerificationData(
          localVerificationData: 'local',
          serverVerificationData: 'server',
          source: 'test',
        ),
        transactionDate: DateTime.now().millisecondsSinceEpoch.toString(),
        status: PurchaseStatus.restored,
      ),
    ]);
  }

  @override
  Future<void> completePurchase(PurchaseDetails purchase) async {}

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    await Upgrader.clearSavedSettings();
    await sl.reset();
  });

  tearDown(() async {
    await sl.reset();
  });

  test('BillingService initializes with FakeInAppPurchase and processes purchases', () async {
    final fakeIap = _FakeInAppPurchase();
    final billingService = BillingService(iap: fakeIap);
    // Initial launch gives 7-day free trial, so isPremium is true
    expect(await billingService.isPremium(), isTrue);

    await billingService.setPremium(false);
    expect(await billingService.isPremium(), isFalse);

    final success = await billingService.buyPlanById('bloomi_premium_monthly');
    expect(success, isTrue);

    await billingService.setPremium(true);
    expect(await billingService.isPremium(), isTrue);

    billingService.dispose();
  });

  testWidgets('PremiumPaywallPage renders successfully',
      (WidgetTester tester) async {
    await setupServiceLocator();
    sl.unregister<AuthRepository>();
    sl.registerSingleton<AuthRepository>(_FakeAuthRepository());

    final settingsBloc = sl<SettingsBloc>();

    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<SettingsBloc>.value(
          value: settingsBloc,
          child: const PremiumPaywallPage(),
        ),
      ),
    );

    await tester.pump();

    expect(find.text('Bloomi Premium'), findsOneWidget);
    expect(find.text('Bloom Without Limits'), findsOneWidget);
  });

  testWidgets('BloomiApp initializes with UpgradeAlert wrapper',
      (WidgetTester tester) async {
    await setupServiceLocator();
    sl.unregister<AuthRepository>();
    sl.registerSingleton<AuthRepository>(_FakeAuthRepository());

    await tester.pumpWidget(const BloomiApp());
    await tester.pump();

    expect(find.byType(UpgradeAlert), findsOneWidget);

    await tester.pump(const Duration(days: 1));
  });
}
