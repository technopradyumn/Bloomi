part of 'food_bloc.dart';

abstract class FoodState extends Equatable {
  const FoodState({
    required this.selectedDate,
    this.diaryState,
    this.searchResults = const [],
    this.isLoading = false,
    this.errorMessage,
  });

  final DateTime selectedDate;
  final FoodDiaryStateEntity? diaryState;
  final List<FoodSearchResultEntity> searchResults;
  final bool isLoading;
  final String? errorMessage;

  @override
  List<Object?> get props => [
        selectedDate,
        diaryState,
        searchResults,
        isLoading,
        errorMessage,
      ];
}

class FoodInitialState extends FoodState {
  FoodInitialState({DateTime? selectedDate})
      : super(selectedDate: selectedDate ?? DateTime.now());
}

class FoodLoadedState extends FoodState {
  const FoodLoadedState({
    required super.selectedDate,
    required super.diaryState,
    super.searchResults,
    super.isLoading = false,
  });

  FoodLoadedState copyWith({
    DateTime? selectedDate,
    FoodDiaryStateEntity? diaryState,
    List<FoodSearchResultEntity>? searchResults,
    bool? isLoading,
  }) {
    return FoodLoadedState(
      selectedDate: selectedDate ?? this.selectedDate,
      diaryState: diaryState ?? this.diaryState,
      searchResults: searchResults ?? this.searchResults,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

class FoodErrorState extends FoodState {
  const FoodErrorState({
    required super.selectedDate,
    super.diaryState,
    required String message,
  }) : super(errorMessage: message);
}

