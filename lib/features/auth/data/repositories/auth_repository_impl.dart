import 'dart:async';
import 'package:uuid/uuid.dart';

import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/auth/data/local/auth_local_data_source.dart';
import 'package:bloomi/features/auth/data/models/auth_user_model.dart';
import 'package:bloomi/features/auth/domain/entities/auth_user_entity.dart';
import 'package:bloomi/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required AuthLocalDataSource localDataSource,
    AppDatabase? db,
  })  : _localDataSource = localDataSource,
        _db = db;

  final AuthLocalDataSource _localDataSource;
  final AppDatabase? _db;
  String? _activeUserId;

  final _authStateController = StreamController<AuthUserEntity?>.broadcast();

  @override
  Stream<AuthUserEntity?> get authStateChanges => _authStateController.stream;

  @override
  String get currentUserId =>
      _activeUserId ??
      getCachedUserSync()?.id ??
      _localDataSource.getLastUserId() ??
      'default_user';

  @override
  AuthUserEntity? getCachedUserSync() {
    final cached = _localDataSource.getCachedUserSync();
    if (cached != null) {
      _activeUserId = cached.id;
    }
    return cached;
  }

  @override
  Future<AuthUserEntity?> checkSession() async {
    final cached = _localDataSource.getCachedUserSync() ?? await _localDataSource.getCachedUser();

    if (cached != null) {
      _activeUserId = cached.id;
      _authStateController.add(cached);
      return cached;
    }

    _activeUserId = null;
    _authStateController.add(null);
    return null;
  }

  @override
  Future<AuthUserEntity> signIn({required String displayName}) async {
    final userId = const Uuid().v4();
    final user = AuthUserModel(
      id: userId,
      email: '',
      displayName: displayName,
      photoUrl: null,
      hasCompletedOnboarding: false,
      isUnder18: false,
    );

    await _localDataSource.cacheUser(user);
    await _localDataSource.setLastUserId(userId);
    _activeUserId = userId;

    _authStateController.add(user);
    return user;
  }

  @override
  Future<void> setOnboardingCompleted(bool completed) async {
    final cached = await _localDataSource.getCachedUser();
    await _localDataSource.setOnboardingCompleted(completed, cached?.id);
    if (cached != null) {
      await _localDataSource.setPermissionsConfigured(true, cached.id);
      final updated = AuthUserModel.fromEntity(
        cached.copyWith(
          hasCompletedOnboarding: completed,
          isFirstTimeUser: false,
          isReinstall: false,
        ),
      );
      await _localDataSource.cacheUser(updated);
      _authStateController.add(updated);
    }
  }

  @override
  Future<void> setUnder18(bool under18) async {
    final cached = await _localDataSource.getCachedUser();
    if (cached != null) {
      final updated = AuthUserModel.fromEntity(
        cached.copyWith(isUnder18: under18),
      );
      await _localDataSource.cacheUser(updated);
      _authStateController.add(updated);
    }
  }

  @override
  Future<void> signOut() async {
    final cached = await _localDataSource.getCachedUser();
    await _localDataSource.clearCache(cached?.id);
    _activeUserId = null;
    _authStateController.add(null);
  }

  @override
  Future<void> deleteAccount() async {
    final cached = await _localDataSource.getCachedUser();
    final uid = cached?.id ?? currentUserId;
    await _localDataSource.clearCache(uid);
    await _db?.clearUserScopedDataForUser(uid);
    _activeUserId = null;
    _authStateController.add(null);
  }
}
