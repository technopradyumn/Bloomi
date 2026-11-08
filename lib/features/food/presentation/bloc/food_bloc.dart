import 'dart:async';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/food/domain/entities/food_diary_state_entity.dart';
import 'package:bloomi/features/food/domain/entities/food_search_result_entity.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';
import 'package:bloomi/features/food/domain/usecases/food_usecases.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'food_event.dart';
part 'food_state.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  FoodBloc({
    required WatchFoodDiaryUseCase watchFoodDiary,
    required SearchFoodUseCase searchFood,
    required DeleteMealUseCase deleteMeal,
    required RestoreMealUseCase restoreMeal,
    required CopyMealUseCase copyMeal,
    required FoodRepository foodRepository,
  })  : _watchFoodDiary = watchFoodDiary,
        _searchFood = searchFood,
        _deleteMeal = deleteMeal,
        _restoreMeal = restoreMeal,
        _copyMeal = copyMeal,
        _foodRepository = foodRepository,
        super(FoodInitialState()) {
    on<FoodDiaryDateChanged>(_onDateChanged);
    on<FoodDiaryNextDayRequested>(_onNextDay);
    on<FoodDiaryPreviousDayRequested>(_onPreviousDay);
    on<FoodDiaryMealDeleted>(_onMealDeleted);
    on<FoodDiaryMealRestored>(_onMealRestored);
    on<FoodDiaryMealCopied>(_onMealCopied);
    on<FoodDiaryRefreshed>(_onDiaryRefreshed);
    on<FoodSearchRequested>(_onSearchRequested);
    on<_FoodDiarySubscriptionUpdated>(_onDiarySubscriptionUpdated);
    on<_FoodDiarySubscriptionFailed>(_onDiarySubscriptionFailed);

    _subscribeToDiary(state.selectedDate);
  }

  final WatchFoodDiaryUseCase _watchFoodDiary;
  final SearchFoodUseCase _searchFood;
  final DeleteMealUseCase _deleteMeal;
  final RestoreMealUseCase _restoreMeal;
  final CopyMealUseCase _copyMeal;
  final FoodRepository _foodRepository;

  FoodRepository get foodRepository => _foodRepository;

  StreamSubscription<FoodDiaryStateEntity>? _diarySubscription;

  void _subscribeToDiary(DateTime date) {
    _diarySubscription?.cancel();
    _diarySubscription = _watchFoodDiary(date).listen(
      (diary) {
        add(_FoodDiarySubscriptionUpdated(diary: diary, date: date));
      },
      onError: (Object error) {
        add(_FoodDiarySubscriptionFailed(message: error.toString(), date: date));
      },
    );
  }

  void _onDiarySubscriptionUpdated(
    _FoodDiarySubscriptionUpdated event,
    Emitter<FoodState> emit,
  ) {
    emit(FoodLoadedState(
      selectedDate: event.date,
      diaryState: event.diary,
      searchResults: state.searchResults,
    ));
  }

  void _onDiarySubscriptionFailed(
    _FoodDiarySubscriptionFailed event,
    Emitter<FoodState> emit,
  ) {
    emit(FoodErrorState(
      selectedDate: event.date,
      diaryState: state.diaryState,
      message: event.message,
    ));
  }

  void _onDateChanged(FoodDiaryDateChanged event, Emitter<FoodState> emit) {
    emit(FoodLoadedState(
      selectedDate: event.date,
      diaryState: state.diaryState,
      searchResults: state.searchResults,
      isLoading: true,
    ));
    _subscribeToDiary(event.date);
  }

  void _onNextDay(FoodDiaryNextDayRequested event, Emitter<FoodState> emit) {
    final next = state.selectedDate.add(const Duration(days: 1));
    emit(FoodLoadedState(
      selectedDate: next,
      diaryState: state.diaryState,
      searchResults: state.searchResults,
      isLoading: true,
    ));
    _subscribeToDiary(next);
  }

  void _onPreviousDay(FoodDiaryPreviousDayRequested event, Emitter<FoodState> emit) {
    final prev = state.selectedDate.subtract(const Duration(days: 1));
    emit(FoodLoadedState(
      selectedDate: prev,
      diaryState: state.diaryState,
      searchResults: state.searchResults,
      isLoading: true,
    ));
    _subscribeToDiary(prev);
  }

  Future<void> _onMealDeleted(FoodDiaryMealDeleted event, Emitter<FoodState> emit) async {
    await _deleteMeal(event.mealId);
    _subscribeToDiary(state.selectedDate);
  }

  Future<void> _onMealRestored(FoodDiaryMealRestored event, Emitter<FoodState> emit) async {
    await _restoreMeal(event.mealId);
    _subscribeToDiary(state.selectedDate);
  }

  Future<void> _onMealCopied(FoodDiaryMealCopied event, Emitter<FoodState> emit) async {
    await _copyMeal(event.meal, event.targetDate);
  }

  void _onDiaryRefreshed(FoodDiaryRefreshed event, Emitter<FoodState> emit) {
    _subscribeToDiary(state.selectedDate);
  }

  Future<void> _onSearchRequested(FoodSearchRequested event, Emitter<FoodState> emit) async {
    emit(FoodLoadedState(
      selectedDate: state.selectedDate,
      diaryState: state.diaryState,
      searchResults: state.searchResults,
      isLoading: true,
    ));
    try {
      final results = await _searchFood(
        event.query,
        category: event.category,
      );
      emit(FoodLoadedState(
        selectedDate: state.selectedDate,
        diaryState: state.diaryState,
        searchResults: results,
        isLoading: false,
      ));
    } catch (e) {
      emit(FoodErrorState(
        selectedDate: state.selectedDate,
        diaryState: state.diaryState,
        message: e.toString(),
      ));
    }
  }

  @override
  Future<void> close() {
    _diarySubscription?.cancel();
    return super.close();
  }
}

