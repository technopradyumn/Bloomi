import 'dart:async';

import 'package:bloomi/core/errors/exceptions.dart';
import 'package:bloomi/features/auth/domain/entities/auth_user_entity.dart';
import 'package:bloomi/features/auth/domain/repositories/auth_repository.dart';
import 'package:bloomi/features/auth/domain/usecases/auth_usecases.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  StreamSubscription<AuthUserEntity?>? _authStateSub;

  AuthBloc({
    required CheckAuthSessionUseCase checkAuthSession,
    required SignInUseCase signIn,
    required SignOutUseCase signOut,
    required SetOnboardingCompletedUseCase setOnboardingCompleted,
    required SetUnder18UseCase setUnder18,
    required AuthRepository authRepository,
  })  : _checkAuthSession = checkAuthSession,
        _signIn = signIn,
        _signOut = signOut,
        _setOnboardingCompleted = setOnboardingCompleted,
        _setUnder18 = setUnder18,
        _authRepository = authRepository,
        super(
          authRepository.getCachedUserSync() != null
              ? AuthAuthenticatedState(authRepository.getCachedUserSync()!)
              : const AuthInitialState(),
        ) {
    on<AuthCheckSessionRequested>(_onCheckSession);
    on<AuthSignInRequested>(_onSignIn);
    on<AuthSignOutRequested>(_onSignOut);
    on<AuthSetOnboardingCompletedRequested>(_onSetOnboardingCompleted);
    on<AuthSetUnder18Requested>(_onSetUnder18);

    _authStateSub = _authRepository.authStateChanges.listen((user) {
      if (user == null && state is AuthAuthenticatedState) {
        add(const AuthCheckSessionRequested());
      }
    });
  }

  final CheckAuthSessionUseCase _checkAuthSession;
  final SignInUseCase _signIn;
  final SignOutUseCase _signOut;
  final SetOnboardingCompletedUseCase _setOnboardingCompleted;
  final SetUnder18UseCase _setUnder18;
  final AuthRepository _authRepository;

  AuthRepository get authRepository => _authRepository;

  Future<void> _onCheckSession(
    AuthCheckSessionRequested event,
    Emitter<AuthState> emit,
  ) async {
    if (state is! AuthAuthenticatedState) {
      emit(const AuthLoadingState());
    }
    try {
      final user = await _checkAuthSession();
      if (user != null) {
        emit(AuthAuthenticatedState(user));
      } else {
        emit(const AuthUnauthenticatedState());
      }
    } catch (e) {
      if (state is! AuthAuthenticatedState) {
        emit(AuthUnauthenticatedState(e.toString()));
      }
    }
  }

  Future<void> _onSignIn(
    AuthSignInRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoadingState(user: state.user));
    try {
      final user = await _signIn(displayName: event.displayName);
      emit(AuthAuthenticatedState(user));
    } on AuthException catch (e) {
      emit(AuthUnauthenticatedState(e.message));
    } catch (e) {
      emit(AuthUnauthenticatedState(e.toString()));
    }
  }

  Future<void> _onSignOut(
    AuthSignOutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthLoadingState());
    await _signOut();
    emit(const AuthUnauthenticatedState());
  }

  Future<void> _onSetOnboardingCompleted(
    AuthSetOnboardingCompletedRequested event,
    Emitter<AuthState> emit,
  ) async {
    await _setOnboardingCompleted(event.completed);
    if (state.user != null) {
      emit(AuthAuthenticatedState(
        state.user!.copyWith(hasCompletedOnboarding: event.completed),
      ));
    }
  }

  Future<void> _onSetUnder18(
    AuthSetUnder18Requested event,
    Emitter<AuthState> emit,
  ) async {
    await _setUnder18(event.isUnder18);
    if (state.user != null) {
      emit(AuthAuthenticatedState(
        state.user!.copyWith(isUnder18: event.isUnder18),
      ));
    }
  }

  @override
  Future<void> close() {
    _authStateSub?.cancel();
    return super.close();
  }
}

