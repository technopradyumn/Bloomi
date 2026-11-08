part of 'plan_bloc.dart';

abstract class PlanState extends Equatable {
  const PlanState();

  @override
  List<Object?> get props => [];
}

class PlanInitial extends PlanState {
  const PlanInitial();
}

class PlanLoading extends PlanState {
  const PlanLoading();
}

class PlanLoaded extends PlanState {
  final DailyPlanBundleEntity plan;

  const PlanLoaded(this.plan);

  @override
  List<Object?> get props => [plan];
}

class PlanError extends PlanState {
  final String message;

  const PlanError(this.message);

  @override
  List<Object?> get props => [message];
}

