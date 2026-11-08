import 'package:bloomi/features/auth/domain/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const SplashInitialState()) {
    on<SplashInitialized>(_onSplashInitialized);
  }

  final AuthRepository _authRepository;

  Future<void> _onSplashInitialized(
    SplashInitialized event,
    Emitter<SplashState> emit,
  ) async {
    emit(const SplashLoadingState());
    await Future<void>.delayed(const Duration(milliseconds: 2000));
    final user = await _authRepository.checkSession();
    if (user != null) {
      if (user.isUnder18) {
        emit(const SplashNavigateState('/under-18'));
        return;
      }
      if (user.hasCompletedOnboarding) {
        emit(const SplashNavigateState('/home'));
        return;
      }
      emit(const SplashNavigateState('/onboarding/intro'));
    } else {
      emit(const SplashNavigateState('/sign-in'));
    }
  }
}

