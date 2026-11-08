import 'dart:convert';
import 'package:bloomi/features/auth/data/models/auth_user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDataSource {
  Future<AuthUserModel?> getCachedUser();
  AuthUserModel? getCachedUserSync();
  Future<void> cacheUser(AuthUserModel user);
  Future<void> clearCache([String? userId]);
  bool hasCompletedOnboarding([String? userId]);
  Future<void> setOnboardingCompleted(bool completed, [String? userId]);
  bool hasConfiguredPermissions([String? userId]);
  Future<void> setPermissionsConfigured(bool configured, [String? userId]);
  String? getLastUserId();
  Future<void> setLastUserId(String userId);
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  const AuthLocalDataSourceImpl(this._prefs);
  final SharedPreferences _prefs;

  static const String _userCacheKey = 'bloomi_cached_user_session';
  static const String _onboardingCompletedKey = 'bloomi_has_completed_onboarding';
  static const String _permissionsConfiguredKey = 'bloomi_permissions_configured';
  static const String _lastUserIdKey = 'bloomi_last_logged_in_user_id';

  @override
  String? getLastUserId() => _prefs.getString(_lastUserIdKey);

  @override
  Future<void> setLastUserId(String userId) => _prefs.setString(_lastUserIdKey, userId);

  @override
  bool hasConfiguredPermissions([String? userId]) {
    if (userId != null) {
      return _prefs.getBool('${_permissionsConfiguredKey}_$userId') ?? false;
    }
    return _prefs.getBool(_permissionsConfiguredKey) ?? false;
  }

  @override
  Future<void> setPermissionsConfigured(bool configured, [String? userId]) async {
    await _prefs.setBool(_permissionsConfiguredKey, configured);
    if (userId != null) {
      await _prefs.setBool('${_permissionsConfiguredKey}_$userId', configured);
    }
  }

  @override
  AuthUserModel? getCachedUserSync() {
    final userJson = _prefs.getString(_userCacheKey);
    if (userJson == null) return null;
    try {
      final map = jsonDecode(userJson) as Map<String, dynamic>;
      final user = AuthUserModel.fromJson(map);
      if (!user.hasCompletedOnboarding && hasCompletedOnboarding(user.id)) {
        return AuthUserModel.fromEntity(
          user.copyWith(hasCompletedOnboarding: true),
        );
      }
      return user;
    } catch (_) {
      return null;
    }
  }

  @override
  Future<AuthUserModel?> getCachedUser() async => getCachedUserSync();

  @override
  Future<void> cacheUser(AuthUserModel user) async {
    final hasCompleted = user.hasCompletedOnboarding || hasCompletedOnboarding(user.id);
    final userToSave = hasCompleted && !user.hasCompletedOnboarding
        ? AuthUserModel.fromEntity(user.copyWith(hasCompletedOnboarding: true))
        : user;
    await _prefs.setString(_userCacheKey, jsonEncode(userToSave.toJson()));
    if (hasCompleted) {
      await setOnboardingCompleted(true, user.id);
    }
  }

  @override
  Future<void> clearCache([String? userId]) async {
    await _prefs.remove(_userCacheKey);
    await _prefs.remove(_onboardingCompletedKey);
    // Note: We intentionally retain '${_onboardingCompletedKey}_$userId' so that
    // returning users who sign out and log back in are remembered as having completed onboarding.
  }

  @override
  bool hasCompletedOnboarding([String? userId]) {
    if (userId != null) {
      return _prefs.getBool('${_onboardingCompletedKey}_$userId') ?? false;
    }
    return _prefs.getBool(_onboardingCompletedKey) ?? false;
  }

  @override
  Future<void> setOnboardingCompleted(bool completed, [String? userId]) async {
    await _prefs.setBool(_onboardingCompletedKey, completed);
    if (userId != null) {
      await _prefs.setBool('${_onboardingCompletedKey}_$userId', completed);
    }
  }
}
