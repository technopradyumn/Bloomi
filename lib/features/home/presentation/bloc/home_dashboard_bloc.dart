import 'dart:async';
import 'package:bloomi/features/home/domain/entities/home_dashboard_entity.dart';
import 'package:bloomi/features/home/domain/usecases/home_usecases.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_dashboard_event.dart';
part 'home_dashboard_state.dart';

class HomeDashboardBloc extends Bloc<HomeDashboardEvent, HomeDashboardState> {
  HomeDashboardBloc({
    required WatchHomeDashboardUseCase watchHomeDashboard,
    required LogQuickWaterUseCase logQuickWater,
    required LogQuickBodyEntryUseCase logQuickBodyEntry,
    required LogQuickWorkoutUseCase logQuickWorkout,
  })  : _watchHomeDashboard = watchHomeDashboard,
        _logQuickWater = logQuickWater,
        _logQuickBodyEntry = logQuickBodyEntry,
        _logQuickWorkout = logQuickWorkout,
        super(const HomeDashboardInitialState()) {
    on<HomeDashboardStarted>(_onStarted);
    on<HomeDashboardUpdated>(_onUpdated);
    on<HomeDashboardWaterQuickLogged>(_onWaterQuickLogged);
    on<HomeDashboardBodyEntryQuickLogged>(_onBodyEntryQuickLogged);
    on<HomeDashboardWorkoutQuickLogged>(_onWorkoutQuickLogged);
    on<HomeDashboardRefreshRequested>(_onRefreshRequested);
  }

  final WatchHomeDashboardUseCase _watchHomeDashboard;
  final LogQuickWaterUseCase _logQuickWater;
  final LogQuickBodyEntryUseCase _logQuickBodyEntry;
  final LogQuickWorkoutUseCase _logQuickWorkout;

  StreamSubscription<HomeDashboardEntity>? _dashboardSubscription;
  String _currentUserName = 'Friend';

  void _onStarted(HomeDashboardStarted event, Emitter<HomeDashboardState> emit) {
    _currentUserName = event.userName;
    emit(const HomeDashboardLoadingState());
    _dashboardSubscription?.cancel();
    _dashboardSubscription = _watchHomeDashboard(userName: _currentUserName).listen(
      (HomeDashboardEntity data) => add(HomeDashboardUpdated(data)),
      onError: (Object error) => emit(HomeDashboardErrorState(error.toString())),
    );
  }

  void _onUpdated(HomeDashboardUpdated event, Emitter<HomeDashboardState> emit) {
    emit(HomeDashboardLoadedState(event.data));
  }

  Future<void> _onWaterQuickLogged(
    HomeDashboardWaterQuickLogged event,
    Emitter<HomeDashboardState> emit,
  ) async {
    await _logQuickWater(ml: event.ml);
  }

  Future<void> _onBodyEntryQuickLogged(
    HomeDashboardBodyEntryQuickLogged event,
    Emitter<HomeDashboardState> emit,
  ) async {
    await _logQuickBodyEntry(
      type: event.type,
      value: event.value,
      notes: event.notes,
    );
  }

  Future<void> _onWorkoutQuickLogged(
    HomeDashboardWorkoutQuickLogged event,
    Emitter<HomeDashboardState> emit,
  ) async {
    await _logQuickWorkout(
      type: event.type,
      durationMinutes: event.durationMinutes,
      calories: event.calories,
    );
  }

  void _onRefreshRequested(
    HomeDashboardRefreshRequested event,
    Emitter<HomeDashboardState> emit,
  ) {
    _dashboardSubscription?.cancel();
    _dashboardSubscription = _watchHomeDashboard(userName: _currentUserName).listen(
      (HomeDashboardEntity data) => add(HomeDashboardUpdated(data)),
      onError: (Object error) => emit(HomeDashboardErrorState(error.toString())),
    );
  }

  @override
  Future<void> close() {
    _dashboardSubscription?.cancel();
    return super.close();
  }
}

