import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/network/api_client.dart';
import 'package:bloomi/features/surroundings/data/network/surroundings_remote_data_source.dart';
import 'package:bloomi/features/surroundings/domain/entities/surroundings_entity.dart';
import 'package:bloomi/features/surroundings/domain/repositories/surroundings_repository.dart';
import 'package:bloomi/features/surroundings/presentation/pages/surroundings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSurroundingsRepository implements SurroundingsRepository {
  CityLocationEntity _city = kDefaultCities.first;
  int getSurroundingsDataCallCount = 0;

  @override
  CityLocationEntity get selectedCity => _city;

  @override
  void selectCity(CityLocationEntity city) {
    _city = city;
  }

  @override
  Future<SurroundingsEntity?> detectLocationAndFetch() async => null;

  @override
  Future<SurroundingsEntity> fetchForLocation(
      double lat, double lon, String cityName) async {
    return SurroundingsEntity.fallback(cityName: cityName);
  }

  @override
  Future<SurroundingsEntity> getSurroundingsData(
      {bool forceRefresh = false}) async {
    getSurroundingsDataCallCount++;
    return SurroundingsEntity.fallback(cityName: 'Test City');
  }
}

class FakeApiClient extends ApiClient {
  FakeApiClient() : super();
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    if (sl.isRegistered<SharedPreferences>()) {
      sl.unregister<SharedPreferences>();
    }
    final prefs = await SharedPreferences.getInstance();
    sl.registerSingleton<SharedPreferences>(prefs);

    if (sl.isRegistered<SurroundingsRepository>()) {
      sl.unregister<SurroundingsRepository>();
    }
  });

  tearDown(() {
    if (sl.isRegistered<SurroundingsRepository>()) {
      sl.unregister<SurroundingsRepository>();
    }
    if (sl.isRegistered<SharedPreferences>()) {
      sl.unregister<SharedPreferences>();
    }
  });

  group('Surroundings Location Permission and Reload Toast Rules', () {
    test('RemoteDataSource does not prompt or request location when service is disabled', () async {
      final dataSource = SurroundingsRemoteDataSourceImpl(FakeApiClient());

      // Mock geolocator platform channels:
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(
        const MethodChannel('flutter.baseflow.com/geolocator'),
        (MethodCall call) async {
          if (call.method == 'isLocationServiceEnabled') {
            return false;
          }
          if (call.method == 'checkPermission') {
            return 0; // denied
          }
          if (call.method == 'requestPermission') {
            fail('requestPermission must never be called');
          }
          return null;
        },
      );

      final pos = await dataSource.getCurrentPosition();
      expect(pos, isNull);
    });

    testWidgets('Surroundings page: initial load never shows location toast, reload shows only one time', (tester) async {
      final mockRepo = MockSurroundingsRepository();
      sl.registerSingleton<SurroundingsRepository>(mockRepo);

      // Mock geolocator: location permission denied
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(
        const MethodChannel('flutter.baseflow.com/geolocator'),
        (MethodCall call) async {
          if (call.method == 'checkPermission') {
            return 0; // 0 = denied in geolocator
          }
          if (call.method == 'requestPermission') {
            fail('Location permission pop up / requestPermission must not be triggered');
          }
          return null;
        },
      );

      await tester.pumpWidget(
        const MaterialApp(
          home: SurroundingsPage(),
        ),
      );
      await tester.pumpAndSettle();

      // 1. Initial screen load must NOT show any SnackBar/Toast for location
      expect(find.byType(SnackBar), findsNothing);

      // 2. User initiates reload by tapping the refresh icon in the AppBar
      final refreshButton = find.byTooltip('Refresh Weather');
      expect(refreshButton, findsOneWidget);
      await tester.tap(refreshButton);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));

      // Toast must appear on user-initiated reload
      expect(find.textContaining('Location permission is disabled'), findsOneWidget);

      // Wait for the 3-second SnackBar to dismiss completely
      await tester.pump(const Duration(seconds: 4));
      await tester.pumpAndSettle();
      expect(find.textContaining('Location permission is disabled'), findsNothing);

      // 3. User initiates a second reload: Toast must NOT be shown again (only one time)
      await tester.tap(refreshButton);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));
      expect(find.textContaining('Location permission is disabled'), findsNothing);
      await tester.pumpAndSettle();
    });
  });
}
