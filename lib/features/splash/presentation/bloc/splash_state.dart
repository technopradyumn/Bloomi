part of 'splash_bloc.dart';

abstract class SplashState extends Equatable {
  const SplashState();

  @override
  List<Object?> get props => [];
}

class SplashInitialState extends SplashState {
  const SplashInitialState();
}

class SplashLoadingState extends SplashState {
  const SplashLoadingState();
}

class SplashNavigateState extends SplashState {
  const SplashNavigateState(this.targetRoute);
  final String targetRoute;

  @override
  List<Object?> get props => [targetRoute];
}

