import 'package:bloomi/features/auth/domain/entities/auth_user_entity.dart';
import 'package:bloomi/features/auth/domain/repositories/auth_repository.dart';

class CheckAuthSessionUseCase {
  const CheckAuthSessionUseCase(this._repository);
  final AuthRepository _repository;

  Future<AuthUserEntity?> call() => _repository.checkSession();
}

class SignInUseCase {
  const SignInUseCase(this._repository);
  final AuthRepository _repository;

  Future<AuthUserEntity> call({required String displayName}) =>
      _repository.signIn(displayName: displayName);
}

class SignOutUseCase {
  const SignOutUseCase(this._repository);
  final AuthRepository _repository;

  Future<void> call() => _repository.signOut();
}

class SetOnboardingCompletedUseCase {
  const SetOnboardingCompletedUseCase(this._repository);
  final AuthRepository _repository;

  Future<void> call(bool completed) => _repository.setOnboardingCompleted(completed);
}

class SetUnder18UseCase {
  const SetUnder18UseCase(this._repository);
  final AuthRepository _repository;

  Future<void> call(bool under18) => _repository.setUnder18(under18);
}


