import 'package:bloomi/features/surroundings/domain/entities/surroundings_entity.dart';
import 'package:bloomi/features/surroundings/domain/repositories/surroundings_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'surroundings_event.dart';
part 'surroundings_state.dart';

class SurroundingsBloc extends Bloc<SurroundingsEvent, SurroundingsState> {
  final SurroundingsRepository _repository;

  SurroundingsBloc({required SurroundingsRepository repository})
      : _repository = repository,
        super(const SurroundingsInitial()) {
    on<SurroundingsRequested>(_onSurroundingsRequested);
    on<SurroundingsCitySelected>(_onCitySelected);
    on<SurroundingsLocationDetected>(_onLocationDetected);
  }

  Future<void> _onSurroundingsRequested(
    SurroundingsRequested event,
    Emitter<SurroundingsState> emit,
  ) async {
    emit(const SurroundingsLoading());
    try {
      final data = await _repository.getSurroundingsData(forceRefresh: event.forceRefresh);
      if (data != null) {
        emit(SurroundingsLoaded(
          data: data,
          selectedCity: _repository.selectedCity,
        ));
      } else {
        emit(const SurroundingsUnavailable());
      }
    } catch (e) {
      emit(SurroundingsError(e.toString()));
    }
  }

  Future<void> _onCitySelected(
    SurroundingsCitySelected event,
    Emitter<SurroundingsState> emit,
  ) async {
    _repository.selectCity(event.city);
    emit(const SurroundingsLoading());
    try {
      final data = await _repository.fetchForLocation(
        event.city.latitude,
        event.city.longitude,
        event.city.name,
      );
      emit(SurroundingsLoaded(
        data: data,
        selectedCity: event.city,
      ));
    } catch (e) {
      emit(SurroundingsError(e.toString()));
    }
  }

  Future<void> _onLocationDetected(
    SurroundingsLocationDetected event,
    Emitter<SurroundingsState> emit,
  ) async {
    emit(const SurroundingsLoading());
    try {
      final data = await _repository.detectLocationAndFetch();
      if (data != null) {
        emit(SurroundingsLoaded(
          data: data,
          selectedCity: CityLocationEntity(
            name: data.cityName,
            latitude: 0,
            longitude: 0,
          ),
        ));
      } else {
        final fallback = await _repository.getSurroundingsData();
        if (fallback != null) {
          emit(SurroundingsLoaded(
            data: fallback,
            selectedCity: _repository.selectedCity,
          ));
        } else {
          emit(const SurroundingsUnavailable());
        }
      }
    } catch (e) {
      emit(SurroundingsError(e.toString()));
    }
  }
}

