import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/meal_section_header.dart';
import 'package:bloomi/core/widgets/metric_animations/health_metric_animations.dart';
import 'package:bloomi/core/widgets/skeleton_loader.dart';
import 'package:bloomi/features/food/data/models/nutrient_snapshot_model.dart';
import 'package:bloomi/features/food/domain/entities/food_diary_state_entity.dart';
import 'package:bloomi/features/food/presentation/bloc/food_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class FoodDiaryPage extends StatelessWidget {
  const FoodDiaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodBloc, FoodState>(
      builder: (context, state) {
        final selectedDate = state.selectedDate;
        final diary = state.diaryState;

        return Scaffold(
          backgroundColor: context.appBackground,
          appBar: AppBar(
            backgroundColor: context.appSurface,
            elevation: 0,
            title: Text(
              'Food Diary',
              style: TextStyle(
                fontFamily: 'Baloo 2',
                fontWeight: FontWeight.w700,
                fontSize: 22,
                color: context.appInk,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.pie_chart_outline_rounded,
                  color: context.appInk,
                ),
                tooltip: 'Daily Nutrition Details',
                onPressed: () => context.push('/food/nutrition-detail'),
              ),
              IconButton(
                icon: Icon(
                  Icons.bookmark_border_rounded,
                  color: context.appInk,
                ),
                tooltip: 'Favourites & Recent',
                onPressed: () => context.push('/food/favourites'),
              ),
            ],
          ),
          body: SafeArea(
            child: Column(
              children: [
                // 1. Date Navigation Strip
                _buildDateStrip(context, selectedDate),

                // 2. Diary Content
                Expanded(
                  child: diary == null
                      ? const _DiarySkeleton()
                      : RefreshIndicator(
                          color: AppColors.mint,
                          onRefresh: () async {
                            context.read<FoodBloc>().add(
                              const FoodDiaryRefreshed(),
                            );
                          },
                          child: ListView(
                            padding: const EdgeInsets.all(AppSpacing.lg),
                            children: [
                              // Daily Summary Card
                              _buildSummaryCard(context, diary),
                              const SizedBox(height: AppSpacing.md),

                              // Four Meal Sections
                              _buildMealSection(
                                context: context,
                                mealType: 'breakfast',
                                title: 'Breakfast',
                                icon: Icons.wb_sunny_outlined,
                                meals: diary.breakfast,
                                totals: diary.breakfastTotals,
                              ),
                              const SizedBox(height: AppSpacing.md),

                              _buildMealSection(
                                context: context,
                                mealType: 'lunch',
                                title: 'Lunch',
                                icon: Icons.wb_sunny_rounded,
                                meals: diary.lunch,
                                totals: diary.lunchTotals,
                              ),
                              const SizedBox(height: AppSpacing.md),

                              _buildMealSection(
                                context: context,
                                mealType: 'snack',
                                title: 'Snacks',
                                icon: Icons.spa_outlined,
                                meals: diary.snack,
                                totals: diary.snackTotals,
                              ),
                              const SizedBox(height: AppSpacing.md),

                              _buildMealSection(
                                context: context,
                                mealType: 'dinner',
                                title: 'Dinner',
                                icon: Icons.nightlight_round,
                                meals: diary.dinner,
                                totals: diary.dinnerTotals,
                              ),
                              const SizedBox(height: 80),
                            ],
                          ),
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildDateStrip(BuildContext context, DateTime selectedDate) {
    final now = DateTime.now();
    final isToday =
        selectedDate.year == now.year &&
        selectedDate.month == now.month &&
        selectedDate.day == now.day;

    final dateLabel = isToday
        ? 'Today'
        : DateFormat('EEE, d MMM').format(selectedDate);

    return Container(
      color: context.appSurface,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.chevron_left_rounded, color: context.appInk),
            onPressed: () {
              context.read<FoodBloc>().add(
                const FoodDiaryPreviousDayRequested(),
              );
            },
          ),
          InkWell(
            onTap: () async {
              final picked = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(2020),
                lastDate: DateTime.now().add(const Duration(days: 365)),
              );
              if (picked != null && context.mounted) {
                context.read<FoodBloc>().add(FoodDiaryDateChanged(picked));
              }
            },
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_today_rounded,
                    size: 16,
                    color: context.appInk,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    dateLabel,
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: context.appInk,
                    ),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.chevron_right_rounded, color: context.appInk),
            onPressed: () {
              context.read<FoodBloc>().add(const FoodDiaryNextDayRequested());
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryCard(BuildContext context, FoodDiaryStateEntity state) {
    final remaining = state.caloriesRemaining;
    final progress = state.calorieProgress;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        boxShadow: context.appCardShadow,
      ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const HealthMetricAnimation(metricType: 'calories', size: 22),
                      const SizedBox(width: 8),
                      Text(
                        'Daily Calorie Budget',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: context.appSlate,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.mint.withAlpha(50),
                      borderRadius: BorderRadius.circular(
                        AppSpacing.chipRadius,
                      ),
                    ),
                    child: Text(
                      '${state.dayTotals.calories.toInt()} / ${state.targetCalories.toInt()} kcal',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: context.appInk,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Text(
                '${remaining.toInt()} kcal remaining',
                style: TextStyle(
                  fontFamily: 'Baloo 2',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: context.appInk,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: context.appBorderColor,
              valueColor: const AlwaysStoppedAnimation<Color>(AppColors.mint),
              minHeight: 8,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMealSection({
    required BuildContext context,
    required String mealType,
    required String title,
    required IconData icon,
    required List<MealLog> meals,
    required DayMealTotalsEntity totals,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        boxShadow: context.appCardShadow,
      ),
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MealSectionHeader(
            title: title,
            caloriesKcal: totals.calories,
            icon: icon,
            onAddPressed: () {
              context.push('/food/add?mealType=$mealType');
            },
          ),
          if (meals.isEmpty) ...[
            const SizedBox(height: AppSpacing.sm),
            InkWell(
              onTap: () => context.push('/food/add?mealType=$mealType'),
              borderRadius: BorderRadius.circular(AppSpacing.chipRadius),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: context.appBackground,
                  borderRadius: BorderRadius.circular(AppSpacing.chipRadius),
                  border: Border.all(color: context.appBorderColor),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.add_rounded,
                      size: 18,
                      color: context.appSlate,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Log $title',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: context.appSlate,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ] else ...[
            const SizedBox(height: AppSpacing.sm),
            Divider(height: 1, color: context.appBorderColor),
            const SizedBox(height: AppSpacing.xs),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: meals.length,
              separatorBuilder: (_, index) =>
                  Divider(height: 1, color: context.appBorderColor),
              itemBuilder: (context, index) {
                final meal = meals[index];
                final snap = NutrientSnapshotModel.fromJson(
                  meal.computedNutrientsSnapshot,
                );

                return Dismissible(
                  key: ValueKey(meal.id),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.error,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(AppSpacing.chipRadius),
                      ),
                    ),
                    child: Icon(
                      Icons.delete_outline_rounded,
                      color: Theme.of(context).colorScheme.onError,
                    ),
                  ),
                  onDismissed: (_) {
                    final foodBloc = context.read<FoodBloc>();
                    final messenger = ScaffoldMessenger.of(context);
                    foodBloc.add(FoodDiaryMealDeleted(meal.id));
                    messenger.hideCurrentSnackBar();
                    messenger.showSnackBar(
                      SnackBar(
                        content: Text('Removed ${meal.foodName}'),
                        duration: const Duration(seconds: 4),
                        action: SnackBarAction(
                          label: 'Undo',
                          textColor: AppColors.butter,
                          onPressed: () {
                            foodBloc.add(
                              FoodDiaryMealRestored(meal.id),
                            );
                          },
                        ),
                      ),
                    );
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      meal.foodName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: context.appInk,
                      ),
                    ),
                    subtitle: Text(
                      '${meal.quantity % 1 == 0 ? meal.quantity.toInt() : meal.quantity} ${meal.unit} (${meal.totalGrams.toInt()}g) · ${snap.protein.toInt()}g P · ${snap.carbs.toInt()}g C',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        color: context.appSlate,
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${snap.calories.toInt()} kcal',
                          style: TextStyle(
                            fontFamily: 'Baloo 2',
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: context.appInk,
                          ),
                        ),
                        PopupMenuButton<String>(
                          icon: Icon(
                            Icons.more_vert_rounded,
                            size: 18,
                            color: context.appSlate,
                          ),
                          color: context.appSurface,
                          onSelected: (val) {
                            if (val == 'copy_tomorrow') {
                              final tomorrow = context
                                  .read<FoodBloc>()
                                  .state
                                  .selectedDate
                                  .add(const Duration(days: 1));
                              context.read<FoodBloc>().add(
                                FoodDiaryMealCopied(
                                  meal: meal,
                                  targetDate: tomorrow,
                                ),
                              );
                              BloomiToast.show(
                                context,
                                message: 'Copied ${meal.foodName} to tomorrow',
                              );
                            } else if (val == 'delete') {
                              final foodBloc = context.read<FoodBloc>();
                              final messenger = ScaffoldMessenger.of(context);
                              foodBloc.add(
                                FoodDiaryMealDeleted(meal.id),
                              );
                              messenger.hideCurrentSnackBar();
                              messenger.showSnackBar(
                                SnackBar(
                                  content: Text('Deleted ${meal.foodName}'),
                                  duration: const Duration(seconds: 4),
                                  action: SnackBarAction(
                                    label: 'Undo',
                                    textColor: AppColors.butter,
                                    onPressed: () {
                                      foodBloc.add(
                                        FoodDiaryMealRestored(meal.id),
                                      );
                                    },
                                  ),
                                ),
                              );
                            }
                          },
                          itemBuilder: (context) => const [
                            PopupMenuItem(
                              value: 'copy_tomorrow',
                              child: Text('Copy to tomorrow'),
                            ),
                            PopupMenuItem(
                              value: 'delete',
                              child: Text('Delete'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ],
      ),
    );
  }
}

class _DiarySkeleton extends StatelessWidget {
  const _DiarySkeleton();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(AppSpacing.lg),
      child: Column(
        children: [
          SkeletonLoader(height: 70),
          SizedBox(height: AppSpacing.md),
          SkeletonLoader(height: 120),
          SizedBox(height: AppSpacing.md),
          SkeletonLoader(height: 120),
          SizedBox(height: AppSpacing.md),
          SkeletonLoader(height: 120),
        ],
      ),
    );
  }
}
