part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class AuthCheckSessionRequested extends AuthEvent {
  const AuthCheckSessionRequested();
}

class AuthSignInRequested extends AuthEvent {
  const AuthSignInRequested({required this.displayName});
  final String displayName;

  @override
  List<Object?> get props => [displayName];
}

class AuthSignOutRequested extends AuthEvent {
  const AuthSignOutRequested();
}

class AuthSetOnboardingCompletedRequested extends AuthEvent {
  const AuthSetOnboardingCompletedRequested(this.completed);
  final bool completed;

  @override
  List<Object?> get props => [completed];
}

class AuthSetUnder18Requested extends AuthEvent {
  const AuthSetUnder18Requested(this.isUnder18);
  final bool isUnder18;

  @override
  List<Object?> get props => [isUnder18];
}

