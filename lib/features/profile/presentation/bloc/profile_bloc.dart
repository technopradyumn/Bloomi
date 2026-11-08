import 'dart:async';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/profile/domain/repositories/profile_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _repository;

  ProfileBloc({required ProfileRepository repository})
      : _repository = repository,
        super(const ProfileInitial()) {
    on<ProfileRequested>(_onProfileRequested);
    on<ProfileUpdated>(_onProfileUpdated);
  }

  Future<void> _onProfileRequested(
    ProfileRequested event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileLoading());
    await emit.forEach<UserProfile?>(
      _repository.watchProfile(),
      onData: (profile) => ProfileLoaded(profile),
      onError: (Object err, _) => ProfileError(err.toString()),
    );
  }

  Future<void> _onProfileUpdated(
    ProfileUpdated event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      await _repository.updateProfile(
        name: event.name,
        gender: event.gender,
        heightCm: event.heightCm,
        dietType: event.dietType,
        allergies: event.allergies,
      );
    } catch (e) {
      emit(ProfileError(e.toString()));
    }
  }
}

