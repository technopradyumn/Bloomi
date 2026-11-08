part of 'home_dashboard_bloc.dart';

abstract class HomeDashboardEvent extends Equatable {
  const HomeDashboardEvent();

  @override
  List<Object?> get props => [];
}

class HomeDashboardStarted extends HomeDashboardEvent {
  const HomeDashboardStarted(this.userName);
  final String userName;

  @override
  List<Object?> get props => [userName];
}

class HomeDashboardUpdated extends HomeDashboardEvent {
  const HomeDashboardUpdated(this.data);
  final HomeDashboardEntity data;

  @override
  List<Object?> get props => [data];
}

class HomeDashboardWaterQuickLogged extends HomeDashboardEvent {
  const HomeDashboardWaterQuickLogged(this.ml);
  final int ml;

  @override
  List<Object?> get props => [ml];
}

class HomeDashboardBodyEntryQuickLogged extends HomeDashboardEvent {
  const HomeDashboardBodyEntryQuickLogged({
    required this.type,
    required this.value,
    this.notes,
  });

  final String type;
  final double value;
  final String? notes;

  @override
  List<Object?> get props => [type, value, notes];
}

class HomeDashboardWorkoutQuickLogged extends HomeDashboardEvent {
  const HomeDashboardWorkoutQuickLogged({
    required this.type,
    required this.durationMinutes,
    required this.calories,
  });

  final String type;
  final int durationMinutes;
  final double calories;

  @override
  List<Object?> get props => [type, durationMinutes, calories];
}

class HomeDashboardRefreshRequested extends HomeDashboardEvent {
  const HomeDashboardRefreshRequested();
}

