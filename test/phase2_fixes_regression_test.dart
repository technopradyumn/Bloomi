import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/auth/data/models/auth_user_model.dart';
import 'package:bloomi/features/onboarding/data/local/onboarding_local_data_source.dart';
import 'package:bloomi/features/surroundings/data/local/surroundings_local_data_source.dart';
import 'package:bloomi/features/surroundings/data/network/surroundings_remote_data_source.dart';
import 'package:bloomi/features/surroundings/data/repositories/surroundings_repository_impl.dart';
import 'package:bloomi/features/surroundings/domain/entities/surroundings_entity.dart';
import 'package:drift/drift.dart' as drift;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSurroundingsRemoteDataSource implements SurroundingsRemoteDataSource {
  @override
  Future<Position?> getCurrentPosition() async => null;

  @override
  Future<SurroundingsEntity> fetchSurroundings(
    double lat,
    double lon,
    String cityName, {
    String? locationName,
  }) async {
    return SurroundingsEntity(
      temperatureC: 22.0,
      feelsLikeC: 21.0,
      humidityPercent: 50,
      uvIndex: 4.0,
      aqi: 45,
      cityName: cityName,
      weatherCode: 1,
      fetchedAt: DateTime.now(),
      isFromCache: false,
      windSpeedKmH: 10.0,
      pm25: 12.0,
      pm10: 25.0,
      latitude: lat,
      longitude: lon,
    );
  }
}

class MockSurroundingsLocalDataSource implements SurroundingsLocalDataSource {
  SurroundingsEntity? cached;

  @override
  Future<void> cacheSurroundings(SurroundingsEntity data) async {
    cached = data;
  }

  @override
  Future<SurroundingsEntity?> getCachedSurroundings() async => cached;

  Future<void> clearCache() async {
    cached = null;
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Phase 2 Bug Fixes Acceptance Tests', () {
    late AppDatabase db;

    setUp(() {
      db = AppDatabase(NativeDatabase.memory());
      SharedPreferences.setMockInitialValues({});
    });

    tearDown(() async {
      await db.close();
    });

    test('Bug 3: Surroundings never falls back to New Delhi when no location available', () async {
      final repo = SurroundingsRepositoryImpl(
        localDataSource: MockSurroundingsLocalDataSource(),
        remoteDataSource: MockSurroundingsRemoteDataSource(),
        prefs: null,
      );

      final result = await repo.getSurroundingsData(forceRefresh: true);
      // Result must be null (SurroundingsUnavailable), NEVER hardcoded New Delhi
      expect(result, isNull);
    });

    test('Bug 5: Onboarding profile query strictly isolates users and never leaks cross-user data', () async {
      final ds = OnboardingLocalDataSourceImpl(
        db,
        userIdProvider: () => 'user_alice',
      );

      // Insert Bob's profile into database
      await db.into(db.userProfiles).insert(
            UserProfilesCompanion.insert(
              id: 'profile_bob',
              name: 'Bob',
              createdAt: DateTime.now(),
              updatedAt: DateTime.now(),
              userId: const drift.Value('user_bob'),
              gender: const drift.Value('male'),
              heightCm: const drift.Value(180.0),
              units: const drift.Value('metric'),
              dietType: const drift.Value('omnivore'),
              allergies: const drift.Value(''),
              language: const drift.Value('en'),
            ),
          );

      // Query profile for Alice: must return null, NEVER Bob's profile
      final aliceProfile = await ds.loadExistingProfile(userId: 'user_alice');
      expect(aliceProfile, isNull);
    });

    test('Bug 5: ScanQueue table in database schema includes userId column', () async {
      // Insert item into ScanQueue with explicit userId
      final now = DateTime.now();
      await db.into(db.scanQueue).insert(
            ScanQueueCompanion.insert(
              id: 'scan_001',
              imagePath: '/tmp/scan.jpg',
              capturedAt: now,
              createdAt: now,
              updatedAt: now,
              userId: const drift.Value('user_charlie'),
            ),
          );

      final row = await (db.select(db.scanQueue)..where((t) => t.id.equals('scan_001'))).getSingle();
      expect(row.userId, equals('user_charlie'));
    });

    test('Bug 1: AuthUserModel preserves first-time and reinstall user separation', () {
      const user = AuthUserModel(
        id: 'user_test_1',
        email: 'test@bloomi.app',
        displayName: 'Tester',
        isFirstTimeUser: true,
        isReinstall: false,
        hasCompletedOnboarding: false,
      );

      expect(user.isFirstTimeUser, isTrue);
      expect(user.hasCompletedOnboarding, isFalse);

      final updated = user.copyWith(hasCompletedOnboarding: true, isFirstTimeUser: false);
      expect(updated.isFirstTimeUser, isFalse);
      expect(updated.hasCompletedOnboarding, isTrue);
    });
  });
}
