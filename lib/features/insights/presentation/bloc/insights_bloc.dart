import 'package:bloomi/features/insights/domain/entities/insights_entity.dart';
import 'package:bloomi/features/insights/domain/repositories/insights_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'insights_event.dart';
part 'insights_state.dart';

class InsightsBloc extends Bloc<InsightsEvent, InsightsState> {
  final InsightsRepository _repository;

  InsightsBloc({required InsightsRepository repository})
      : _repository = repository,
        super(const InsightsInitial()) {
    on<InsightsReportRequested>(_onReportRequested);
    on<InsightsBadgeUnlocked>(_onBadgeUnlocked);
  }

  Future<void> _onReportRequested(
    InsightsReportRequested event,
    Emitter<InsightsState> emit,
  ) async {
    emit(const InsightsLoading());
    try {
      final report = await _repository.getWeeklyReport();
      emit(InsightsLoaded(report));
    } catch (e) {
      emit(InsightsError(e.toString()));
    }
  }

  Future<void> _onBadgeUnlocked(
    InsightsBadgeUnlocked event,
    Emitter<InsightsState> emit,
  ) async {
    try {
      await _repository.unlockBadge(event.badgeId);
    } catch (e) {
      emit(InsightsError(e.toString()));
    }
  }
}

