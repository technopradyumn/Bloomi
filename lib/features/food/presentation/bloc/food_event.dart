part of 'food_bloc.dart';

abstract class FoodEvent extends Equatable {
  const FoodEvent();

  @override
  List<Object?> get props => [];
}

class FoodDiaryDateChanged extends FoodEvent {
  const FoodDiaryDateChanged(this.date);
  final DateTime date;

  @override
  List<Object?> get props => [date];
}

class FoodDiaryNextDayRequested extends FoodEvent {
  const FoodDiaryNextDayRequested();
}

class FoodDiaryPreviousDayRequested extends FoodEvent {
  const FoodDiaryPreviousDayRequested();
}

class FoodDiaryMealDeleted extends FoodEvent {
  const FoodDiaryMealDeleted(this.mealId);
  final String mealId;

  @override
  List<Object?> get props => [mealId];
}

class FoodDiaryMealRestored extends FoodEvent {
  const FoodDiaryMealRestored(this.mealId);
  final String mealId;

  @override
  List<Object?> get props => [mealId];
}

class FoodDiaryMealCopied extends FoodEvent {
  const FoodDiaryMealCopied({
    required this.meal,
    required this.targetDate,
    this.targetMealType,
  });

  final MealLog meal;
  final DateTime targetDate;
  final String? targetMealType;

  @override
  List<Object?> get props => [meal, targetDate, targetMealType];
}

class FoodDiaryRefreshed extends FoodEvent {
  const FoodDiaryRefreshed();
}

class FoodSearchRequested extends FoodEvent {
  const FoodSearchRequested(this.query, {this.category});
  final String query;
  final String? category;

  @override
  List<Object?> get props => [query, category];
}

class _FoodDiarySubscriptionUpdated extends FoodEvent {
  const _FoodDiarySubscriptionUpdated({
    required this.diary,
    required this.date,
  });

  final FoodDiaryStateEntity diary;
  final DateTime date;

  @override
  List<Object?> get props => [diary, date];
}

class _FoodDiarySubscriptionFailed extends FoodEvent {
  const _FoodDiarySubscriptionFailed({
    required this.message,
    required this.date,
  });

  final String message;
  final DateTime date;

  @override
  List<Object?> get props => [message, date];
}

