part of 'auth_bloc.dart';

enum AuthStatus {
  initial,
  authenticated,
  unauthenticated,
  loading,
}

abstract class AuthState extends Equatable {
  const AuthState({
    required this.status,
    this.user,
    this.errorMessage,
  });

  final AuthStatus status;
  final AuthUserEntity? user;
  final String? errorMessage;

  bool get isAuthenticated => status == AuthStatus.authenticated && user != null;

  @override
  List<Object?> get props => [status, user, errorMessage];
}

class AuthInitialState extends AuthState {
  const AuthInitialState() : super(status: AuthStatus.initial);
}

class AuthLoadingState extends AuthState {
  const AuthLoadingState({super.user}) : super(status: AuthStatus.loading);
}

class AuthAuthenticatedState extends AuthState {
  const AuthAuthenticatedState(AuthUserEntity user)
      : super(status: AuthStatus.authenticated, user: user);
}

class AuthUnauthenticatedState extends AuthState {
  const AuthUnauthenticatedState([String? errorMessage])
      : super(status: AuthStatus.unauthenticated, errorMessage: errorMessage);
}

