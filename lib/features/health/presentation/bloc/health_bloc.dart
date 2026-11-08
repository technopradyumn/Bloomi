import 'dart:async';
import 'package:bloomi/features/health/domain/entities/health_overview_entity.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'health_event.dart';
part 'health_state.dart';

class HealthBloc extends Bloc<HealthEvent, HealthState> {
  final HealthRepository _repository;

  HealthBloc({required HealthRepository repository})
      : _repository = repository,
        super(const HealthInitial()) {
    on<HealthOverviewRequested>(_onOverviewRequested);
    on<HealthBodyEntryLogged>(_onBodyEntryLogged);
    on<HealthWorkoutLogged>(_onWorkoutLogged);
  }

  Future<void> _onOverviewRequested(
    HealthOverviewRequested event,
    Emitter<HealthState> emit,
  ) async {
    emit(const HealthLoading());
    await emit.forEach<HealthOverviewEntity>(
      _repository.watchHealthOverview(),
      onData: (overview) => HealthLoaded(overview),
      onError: (Object err, _) => HealthError(err.toString()),
    );
  }

  Future<void> _onBodyEntryLogged(
    HealthBodyEntryLogged event,
    Emitter<HealthState> emit,
  ) async {
    try {
      await _repository.logBodyEntry(
        type: event.type,
        value: event.value,
        unit: event.unit,
        measuredAt: event.measuredAt,
        source: event.source,
      );
    } catch (e) {
      emit(HealthError(e.toString()));
    }
  }

  Future<void> _onWorkoutLogged(
    HealthWorkoutLogged event,
    Emitter<HealthState> emit,
  ) async {
    try {
      await _repository.logWorkout(
        type: event.type,
        durationMinutes: event.durationMinutes,
        calories: event.calories,
        recordedAt: event.recordedAt,
        source: event.source,
      );
    } catch (e) {
      emit(HealthError(e.toString()));
    }
  }
}

