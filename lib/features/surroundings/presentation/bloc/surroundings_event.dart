part of 'surroundings_bloc.dart';

abstract class SurroundingsEvent extends Equatable {
  const SurroundingsEvent();

  @override
  List<Object?> get props => [];
}

class SurroundingsRequested extends SurroundingsEvent {
  final bool forceRefresh;
  const SurroundingsRequested({this.forceRefresh = false});

  @override
  List<Object?> get props => [forceRefresh];
}

class SurroundingsCitySelected extends SurroundingsEvent {
  final CityLocationEntity city;
  const SurroundingsCitySelected(this.city);

  @override
  List<Object?> get props => [city];
}

class SurroundingsLocationDetected extends SurroundingsEvent {
  const SurroundingsLocationDetected();
}

