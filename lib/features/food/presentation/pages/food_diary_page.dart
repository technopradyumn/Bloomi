import 'package:bloomi/core/localization/app_localizations.dart';
import 'dart:math' as math;
import 'package:bloomi/app/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/widgets/bloomi_cupertino_picker.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/meal_section_header.dart';
import 'package:bloomi/core/widgets/skeleton_loader.dart';
import 'package:bloomi/features/food/data/models/nutrient_snapshot_model.dart';
import 'package:bloomi/features/food/domain/entities/food_diary_state_entity.dart';
import 'package:bloomi/features/food/presentation/bloc/food_bloc.dart';
import 'package:bloomi/features/profile/domain/repositories/profile_repository.dart';
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
              context.tr('food_diary_title'),
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
                  CupertinoIcons.chart_pie,
                  color: context.appInk,
                ),
                tooltip: context.tr('food_nutrition_details_title'),
                onPressed: () => context.push('/food/nutrition-detail'),
              ),
              IconButton(
                icon: Icon(
                  CupertinoIcons.bookmark,
                  color: context.appInk,
                ),
                tooltip: context.tr('food_favourites'),
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
                              // Daily Summary Card with Distinct Animated Icon
                              _buildSummaryCard(context, diary),
                              const SizedBox(height: AppSpacing.md),

                              // Four Meal Sections
                              _buildMealSection(
                                context: context,
                                mealType: 'breakfast',
                                title: 'Breakfast',
                                icon: CupertinoIcons.sun_max,
                                meals: diary.breakfast,
                                totals: diary.breakfastTotals,
                              ),
                              const SizedBox(height: AppSpacing.md),

                              _buildMealSection(
                                context: context,
                                mealType: 'lunch',
                                title: 'Lunch',
                                icon: CupertinoIcons.sun_max_fill,
                                meals: diary.lunch,
                                totals: diary.lunchTotals,
                              ),
                              const SizedBox(height: AppSpacing.md),

                              _buildMealSection(
                                context: context,
                                mealType: 'snack',
                                title: 'Snacks',
                                icon: CupertinoIcons.sparkles,
                                meals: diary.snack,
                                totals: diary.snackTotals,
                              ),
                              const SizedBox(height: AppSpacing.md),

                              _buildMealSection(
                                context: context,
                                mealType: 'dinner',
                                title: 'Dinner',
                                icon: CupertinoIcons.moon_fill,
                                meals: diary.dinner,
                                totals: diary.dinnerTotals,
                              ),
                              const SizedBox(height: AppSpacing.lg),

                              // Meal Suggestions Section (Exclusively on Food Diary)
                              const _DiaryMealSuggestionsSection(),

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
            icon: Icon(CupertinoIcons.chevron_left, color: context.appInk),
            onPressed: () {
              context.read<FoodBloc>().add(
                const FoodDiaryPreviousDayRequested(),
              );
            },
          ),
          InkWell(
            onTap: () async {
              final picked = await BloomiCupertinoPicker.showDatePicker(
                context,
                initialDate: selectedDate,
                firstDate: DateTime(2020),
                lastDate: DateTime.now().add(const Duration(days: 365)),
                title: 'Select Diary Date',
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
                    CupertinoIcons.calendar_today,
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
            icon: Icon(CupertinoIcons.chevron_right, color: context.appInk),
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
        border: Border.all(color: context.appBorderColor),
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
                      // Distinct Animated Plate Icon unique to this screen
                      const AnimatedFoodDiaryPlateMetric(size: 26),
                      const SizedBox(width: 8),
                      Text(
                        context.tr('home_calories_budget'),
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: context.appSlate,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Color.alphaBlend(
                          AppColors.mint.withOpacity(0.20),
                          context.appSurface,
                        ),
                        borderRadius: BorderRadius.circular(
                          AppSpacing.chipRadius,
                        ),
                      ),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '${state.dayTotals.calories.toInt()} / ${state.targetCalories.toInt()} kcal',
                          maxLines: 1,
                          softWrap: false,
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: context.appInk,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                context.tr('home_calories_remaining', {'kcal': remaining.toInt()}),
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
    required DayMealTotals totals,
  }) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        boxShadow: context.appCardShadow,
        border: Border.all(color: context.appBorderColor),
      ),
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
              child: Center(
                child: Text(
                  context.tr('food_empty_meal'),
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: context.appSlate,
                  ),
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

                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  onTap: () async {
                    // Tapping any food item opens its Food Detail screen in EDIT/VIEW mode!
                    final updated = await context.push(
                      '/food/detail/${meal.foodReference}?mealEntryId=${meal.id}&isEdit=true&mealType=${meal.mealType}&quantity=${meal.quantity}&unit=${Uri.encodeComponent(meal.unit)}&grams=${meal.totalGrams}&name=${Uri.encodeComponent(meal.foodName)}&kcal=${snap.calories}&p=${snap.protein}&c=${snap.carbs}&f=${snap.fat}&fib=${snap.fibre}',
                    );
                    if (updated == true && context.mounted) {
                      context.read<FoodBloc>().add(const FoodDiaryRefreshed());
                    }
                  },
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
                      fontWeight: FontWeight.w600,
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
                          CupertinoIcons.ellipsis_vertical,
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
                          } else if (val == 'edit') {
                            context.push(
                              '/food/detail/${meal.foodReference}?mealEntryId=${meal.id}&isEdit=true&mealType=${meal.mealType}&quantity=${meal.quantity}&unit=${Uri.encodeComponent(meal.unit)}&grams=${meal.totalGrams}&name=${Uri.encodeComponent(meal.foodName)}&kcal=${snap.calories}&p=${snap.protein}&c=${snap.carbs}&f=${snap.fat}&fib=${snap.fibre}',
                            );
                          } else if (val == 'delete') {
                            final foodBloc = context.read<FoodBloc>();
                            final messenger = ScaffoldMessenger.of(context);
                            foodBloc.add(FoodDiaryMealDeleted(meal.id));
                            messenger.hideCurrentSnackBar();
                            messenger.showSnackBar(
                              SnackBar(
                                content: Text('Deleted ${meal.foodName}'),
                                duration: const Duration(seconds: 4),
                                action: SnackBarAction(
                                  label: 'Undo',
                                  textColor: Theme.of(context).colorScheme.primary,
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
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            value: 'edit',
                            child: Text(context.tr('food_edit_entry')),
                          ),
                          PopupMenuItem(
                            value: 'copy_tomorrow',
                            child: Text(context.tr('food_edit_food')),
                          ),
                          PopupMenuItem(value: 'delete', child: Text(context.tr('delete'))),
                        ],
                      ),
                    ],
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

/// Dedicated Meal Suggestions Widget shown exclusively on Food Diary screen.
/// Randomizes food suggestions matching the user's saved dietary preference (veg, non-veg, vegan, etc.).
class _DiaryMealSuggestionsSection extends StatefulWidget {
  const _DiaryMealSuggestionsSection();

  @override
  State<_DiaryMealSuggestionsSection> createState() =>
      _DiaryMealSuggestionsSectionState();
}

class _DiaryMealSuggestionsSectionState
    extends State<_DiaryMealSuggestionsSection> {
  List<FoodItem> _suggestions = [];
  bool _isLoading = true;
  String _currentDiet = 'Vegetarian';

  @override
  void initState() {
    super.initState();
    _loadSuggestions();
  }

  Future<void> _loadSuggestions() async {
    setState(() => _isLoading = true);
    final db = sl<AppDatabase>();
    final profile = await sl<ProfileRepository>().getProfile();
    final dietType = (profile?.dietType ?? 'Vegetarian').toLowerCase();
    _currentDiet = profile?.dietType ?? 'Vegetarian';

    final allFoods = await (db.select(
      db.foodItems,
    )..where((t) => t.deleted.equals(false))).get();

    // Filter by saved dietary preference
    final filtered = allFoods.where((food) {
      final tags = (food.dietTags ?? 'veg').toLowerCase();
      if (dietType.contains('vegan')) {
        return tags.contains('vegan');
      } else if (dietType.contains('non-veg') || dietType.contains('non_veg')) {
        return true; // Non-veg allows all foods
      } else if (dietType.contains('egg')) {
        return tags.contains('veg') || tags.contains('egg');
      } else {
        // Default vegetarian: only veg dishes
        return tags.contains('veg') || tags.contains('vegan');
      }
    }).toList();

    // Randomize candidates
    filtered.shuffle(math.Random());
    final picked = filtered.take(3).toList();

    if (mounted) {
      setState(() {
        _suggestions = picked;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        boxShadow: context.appCardShadow,
        border: Border.all(color: context.appBorderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Color.alphaBlend(
                        AppColors.mint.withOpacity(0.20),
                        context.appSurface,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      CupertinoIcons.bag_fill,
                      size: 16,
                      color: AppColors.mintDark,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.tr('plan_meal_suggestions'),
                        style: TextStyle(
                          fontFamily: 'Baloo 2',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: context.appInk,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Color.alphaBlend(
                            AppColors.lilac.withOpacity(0.20),
                            context.appSurface,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          _currentDiet,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: context.appInk,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 4),
              IconButton(
                icon: Icon(
                  CupertinoIcons.arrow_clockwise,
                  size: 20,
                  color: context.appSlate,
                ),
                tooltip: context.tr('refresh'),
                onPressed: _loadSuggestions,
              ),
            ],
          ),
          Text(
            'Random ideas tailored to your ${_currentDiet.toLowerCase()} lifestyle. Tap to view details or log.',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: context.appSlate,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Divider(height: 1, color: context.appBorderColor),
          const SizedBox(height: AppSpacing.xs),

          if (_isLoading)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: AppSpacing.md),
              child: Center(
                child: CircularProgressIndicator(
                  color: AppColors.mint,
                  strokeWidth: 2,
                ),
              ),
            )
          else if (_suggestions.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
              child: Center(
                child: Text(
                  'No suggestions found for $_currentDiet.',
                  style: TextStyle(fontSize: 13, color: context.appSlate),
                ),
              ),
            )
          else
            ..._suggestions.map((food) {
              return ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  // Opens Food Detail in ADD mode with real accurate nutritional values
                  context.push(
                    '/food/detail/${food.id}?mealType=lunch&name=${Uri.encodeComponent(food.name)}&kcal=${food.kcalPer100g}&p=${food.proteinPer100g}&c=${food.carbsPer100g}&f=${food.fatPer100g}&fib=${food.fibrePer100g}',
                  );
                },
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color.alphaBlend(
                      AppColors.peach.withOpacity(0.25),
                      context.appSurface,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      food.dietTags?.contains('vegan') == true
                          ? '🌱'
                          : food.dietTags?.contains('non-veg') == true
                          ? '🍗'
                          : '🥗',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                title: Text(
                  food.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: context.appInk,
                  ),
                ),
                subtitle: Text(
                  '${food.kcalPer100g.toInt()} kcal / 100g · ${food.proteinPer100g.toInt()}g P · ${food.category}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: context.appSlate,
                  ),
                ),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mint,
                    foregroundColor: context.appInk,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 4,
                    ),
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    context.push(
                      '/food/detail/${food.id}?mealType=lunch&name=${Uri.encodeComponent(food.name)}&kcal=${food.kcalPer100g}&p=${food.proteinPer100g}&c=${food.carbsPer100g}&f=${food.fatPer100g}&fib=${food.fibrePer100g}',
                    );
                  },
                  child: Text(
                    context.tr('home_details'),
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
                  ),
                ),
              );
            }),
        ],
      ),
    );
  }
}

/// Distinct, elegant animated icon for the Food Diary screen:
/// Draws a charming ceramic nourishment bowl with rising steam aroma swirls and a swaying green leaf.
class AnimatedFoodDiaryPlateMetric extends StatefulWidget {
  final double size;
  final Color? color;

  const AnimatedFoodDiaryPlateMetric({super.key, this.size = 26, this.color});

  @override
  State<AnimatedFoodDiaryPlateMetric> createState() =>
      _AnimatedFoodDiaryPlateMetricState();
}

class _AnimatedFoodDiaryPlateMetricState
    extends State<AnimatedFoodDiaryPlateMetric>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2600),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final activeColor =
        widget.color ??
        (context.isDarkMode ? AppColors.darkMint : AppColors.mintDark);
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return CustomPaint(
            painter: _FoodDiaryPlatePainter(
              progress: _controller.value,
              color: activeColor,
            ),
          );
        },
      ),
    );
  }
}

class _FoodDiaryPlatePainter extends CustomPainter {
  final double progress;
  final Color color;

  _FoodDiaryPlatePainter({required this.progress, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;

    final bowlPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round;

    // Draw bowl rim and curved base
    final bowlPath = Path()
      ..moveTo(w * 0.15, h * 0.58)
      ..quadraticBezierTo(w * 0.18, h * 0.90, w * 0.50, h * 0.92)
      ..quadraticBezierTo(w * 0.82, h * 0.90, w * 0.85, h * 0.58)
      ..lineTo(w * 0.15, h * 0.58);
    canvas.drawPath(bowlPath, bowlPaint);

    // Draw small bowl foot
    canvas.drawLine(
      Offset(w * 0.38, h * 0.94),
      Offset(w * 0.62, h * 0.94),
      bowlPaint,
    );

    // Animated rising steam wisps
    final steamPaint = Paint()
      ..color = color.withOpacity(0.85)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6
      ..strokeCap = StrokeCap.round;

    final p1 = (progress) % 1.0;
    final p2 = (progress + 0.5) % 1.0;

    // Wisp 1
    final wisp1 = Path()
      ..moveTo(w * 0.40, h * 0.52 - (p1 * h * 0.32))
      ..quadraticBezierTo(
        w * 0.35 + math.sin(p1 * 2 * math.pi) * 3,
        h * 0.38 - (p1 * h * 0.28),
        w * 0.42,
        h * 0.24 - (p1 * h * 0.22),
      );
    steamPaint.color = color.withOpacity((1.0 - p1).clamp(0.1, 0.9));
    canvas.drawPath(wisp1, steamPaint);

    // Wisp 2
    final wisp2 = Path()
      ..moveTo(w * 0.60, h * 0.52 - (p2 * h * 0.32))
      ..quadraticBezierTo(
        w * 0.65 + math.cos(p2 * 2 * math.pi) * 3,
        h * 0.38 - (p2 * h * 0.28),
        w * 0.58,
        h * 0.24 - (p2 * h * 0.22),
      );
    steamPaint.color = color.withOpacity((1.0 - p2).clamp(0.1, 0.9));
    canvas.drawPath(wisp2, steamPaint);

    // Center fresh leafy sprout inside the bowl
    final leafPaint = Paint()
      ..color = AppColors.mint
      ..style = PaintingStyle.fill;

    final leafCenter = Offset(w * 0.50, h * 0.56);
    final sway = math.sin(progress * 2 * math.pi) * 2;
    canvas.save();
    canvas.translate(leafCenter.dx, leafCenter.dy);
    canvas.rotate(sway * 0.08);
    canvas.drawOval(
      Rect.fromCenter(
        center: const Offset(0, -5),
        width: w * 0.22,
        height: h * 0.26,
      ),
      leafPaint,
    );
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant _FoodDiaryPlatePainter oldDelegate) {
    return oldDelegate.progress != progress || oldDelegate.color != color;
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
