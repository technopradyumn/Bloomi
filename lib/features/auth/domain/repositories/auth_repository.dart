import 'package:bloomi/features/auth/domain/entities/auth_user_entity.dart';

abstract class AuthRepository {
  Stream<AuthUserEntity?> get authStateChanges;
  Future<AuthUserEntity?> checkSession();
  AuthUserEntity? getCachedUserSync();
  Future<AuthUserEntity> signIn({required String displayName});
  Future<void> setOnboardingCompleted(bool completed);
  Future<void> setUnder18(bool under18);
  Future<void> signOut();
  String get currentUserId;
  Future<void> deleteAccount();
}

