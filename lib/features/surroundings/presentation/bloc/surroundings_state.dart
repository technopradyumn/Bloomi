part of 'surroundings_bloc.dart';

abstract class SurroundingsState extends Equatable {
  const SurroundingsState();

  @override
  List<Object?> get props => [];
}

class SurroundingsInitial extends SurroundingsState {
  const SurroundingsInitial();
}

class SurroundingsLoading extends SurroundingsState {
  const SurroundingsLoading();
}

class SurroundingsLoaded extends SurroundingsState {
  final SurroundingsEntity data;
  final CityLocationEntity selectedCity;

  const SurroundingsLoaded({
    required this.data,
    required this.selectedCity,
  });

  @override
  List<Object?> get props => [data, selectedCity];
}

class SurroundingsUnavailable extends SurroundingsState {
  const SurroundingsUnavailable();
}

class SurroundingsError extends SurroundingsState {
  final String message;

  const SurroundingsError(this.message);

  @override
  List<Object?> get props => [message];
}

