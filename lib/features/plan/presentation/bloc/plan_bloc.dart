import 'package:bloomi/features/plan/domain/entities/daily_plan_entity.dart';
import 'package:bloomi/features/plan/domain/repositories/plan_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'plan_event.dart';
part 'plan_state.dart';

class PlanBloc extends Bloc<PlanEvent, PlanState> {
  final PlanRepository _repository;
  DateTime? _currentDate;

  PlanBloc({required PlanRepository repository})
      : _repository = repository,
        super(const PlanInitial()) {
    on<PlanRequested>(_onPlanRequested);
    on<PlanMealSwapped>(_onMealSwapped);
    on<PlanChecklistToggled>(_onChecklistToggled);
    on<PlanTargetsUpdated>(_onTargetsUpdated);
  }

  Future<void> _onPlanRequested(
    PlanRequested event,
    Emitter<PlanState> emit,
  ) async {
    emit(const PlanLoading());
    try {
      _currentDate = event.date ?? DateTime.now();
      final plan = await _repository.generateDailyPlan(date: _currentDate);
      emit(PlanLoaded(plan));
    } catch (e) {
      emit(PlanError(e.toString()));
    }
  }

  Future<void> _onMealSwapped(
    PlanMealSwapped event,
    Emitter<PlanState> emit,
  ) async {
    try {
      _repository.cycleSwap(event.mealType);
      final plan = await _repository.generateDailyPlan(date: _currentDate);
      emit(PlanLoaded(plan));
    } catch (e) {
      emit(PlanError(e.toString()));
    }
  }

  Future<void> _onChecklistToggled(
    PlanChecklistToggled event,
    Emitter<PlanState> emit,
  ) async {
    try {
      await _repository.toggleChecklistItem(
        itemKey: event.itemKey,
        date: event.date,
      );
      final plan = await _repository.generateDailyPlan(date: _currentDate);
      emit(PlanLoaded(plan));
    } catch (e) {
      emit(PlanError(e.toString()));
    }
  }

  Future<void> _onTargetsUpdated(
    PlanTargetsUpdated event,
    Emitter<PlanState> emit,
  ) async {
    try {
      await _repository.updateTargets(
        calories: event.calories,
        protein: event.protein,
        carbs: event.carbs,
        fat: event.fat,
        fibre: event.fibre,
        waterMl: event.waterMl,
        steps: event.steps,
        sleepHours: event.sleepHours,
        targetWeightKg: event.targetWeightKg,
        gender: event.gender,
      );
      final plan = await _repository.generateDailyPlan(date: _currentDate);
      emit(PlanLoaded(plan));
    } catch (e) {
      emit(PlanError(e.toString()));
    }
  }
}

