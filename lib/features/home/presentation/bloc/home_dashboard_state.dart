part of 'home_dashboard_bloc.dart';

abstract class HomeDashboardState extends Equatable {
  const HomeDashboardState();

  @override
  List<Object?> get props => [];
}

class HomeDashboardInitialState extends HomeDashboardState {
  const HomeDashboardInitialState();
}

class HomeDashboardLoadingState extends HomeDashboardState {
  const HomeDashboardLoadingState();
}

class HomeDashboardLoadedState extends HomeDashboardState {
  const HomeDashboardLoadedState(this.data);
  final HomeDashboardEntity data;

  @override
  List<Object?> get props => [data];
}

class HomeDashboardErrorState extends HomeDashboardState {
  const HomeDashboardErrorState(this.message);
  final String message;

  @override
  List<Object?> get props => [message];
}

