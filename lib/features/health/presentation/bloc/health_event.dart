part of 'health_bloc.dart';

abstract class HealthEvent extends Equatable {
  const HealthEvent();

  @override
  List<Object?> get props => [];
}

class HealthOverviewRequested extends HealthEvent {
  final bool forceRefresh;
  const HealthOverviewRequested({this.forceRefresh = false});

  @override
  List<Object?> get props => [forceRefresh];
}

class HealthBodyEntryLogged extends HealthEvent {
  final String type;
  final double value;
  final String unit;
  final DateTime? measuredAt;
  final String? source;

  const HealthBodyEntryLogged({
    required this.type,
    required this.value,
    required this.unit,
    this.measuredAt,
    this.source,
  });

  @override
  List<Object?> get props => [type, value, unit, measuredAt, source];
}

class HealthWorkoutLogged extends HealthEvent {
  final String type;
  final int durationMinutes;
  final double calories;
  final DateTime? recordedAt;
  final String? source;

  const HealthWorkoutLogged({
    required this.type,
    required this.durationMinutes,
    required this.calories,
    this.recordedAt,
    this.source,
  });

  @override
  List<Object?> get props => [type, durationMinutes, calories, recordedAt, source];
}

