import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';
import 'package:bloomi/features/plan/domain/entities/daily_plan_entity.dart';
import 'package:bloomi/features/plan/domain/repositories/plan_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WeeklyPlanPage extends StatefulWidget {
  const WeeklyPlanPage({super.key});

  @override
  State<WeeklyPlanPage> createState() => _WeeklyPlanPageState();
}

class _WeeklyPlanPageState extends State<WeeklyPlanPage> {
  int _selectedDayIndex = 0;
  DailyPlanBundleEntity? _planData;
  bool _isLoading = true;
  String? _error;

  static const List<String> _days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  @override
  void initState() {
    super.initState();
    _loadPlan();
  }

  Future<void> _loadPlan() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });
    try {
      final plan = await sl<PlanRepository>().generateDailyPlan();
      if (mounted) {
        setState(() {
          _planData = plan;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Weekly Meal Plan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Baloo 2',
            color: context.appInk,
          ),
        ),
        backgroundColor: context.appSurface,
        foregroundColor: context.appInk,
        elevation: 0,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator(color: AppColors.mint))
          : _error != null
              ? Center(child: Text('Error loading plan: $_error', style: TextStyle(color: context.appInk)))
              : _buildContent(context, _planData!),
    );
  }

  Widget _buildContent(BuildContext context, DailyPlanBundleEntity planData) {
    final targetKcal = planData.totalCaloriesTarget;

    return Column(
      children: [
        // Day tabs horizontal list
        Container(
          color: context.appSurface,
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
          child: SizedBox(
            height: 48,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
              itemCount: _days.length,
              itemBuilder: (context, index) {
                final isSelected = index == _selectedDayIndex;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(
                    label: Text(
                      _days[index].substring(0, 3),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isSelected ? Theme.of(context).colorScheme.onPrimary : context.appSlate,
                      ),
                    ),
                    selected: isSelected,
                    selectedColor: AppColors.mint,
                    backgroundColor: context.appSurface,
                    onSelected: (_) => setState(() => _selectedDayIndex = index),
                  ),
                );
              },
            ),
          ),
        ),

        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(AppSpacing.md),
            children: [
              // Daily Target Card for selected day
              Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppColors.butter.withValues(alpha: 0.4),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.calendar_month_rounded, color: context.appInk),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${_days[_selectedDayIndex]} Planned Meals',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Baloo 2',
                              color: context.appInk,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'Target: ${targetKcal.toInt()} kcal • Balanced Nutrition',
                            style: TextStyle(fontSize: 13, color: context.appSlate),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              Text(
                'SUGGESTED DISHES',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: context.appSlate,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),

              ...planData.mealSuggestions.map((meal) {
                return Container(
                  margin: const EdgeInsets.only(bottom: AppSpacing.sm),
                  decoration: BoxDecoration(
                    color: context.appSurface,
                    borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                    boxShadow: context.appCardShadow,
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.md, vertical: 6),
                    leading: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: AppColors.mint.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Icon(Icons.restaurant_menu_rounded, color: context.appInk),
                      ),
                    ),
                    title: Text(
                      meal.foodName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: context.appInk,
                      ),
                    ),
                    subtitle: Text(
                      '${meal.mealType} • ${meal.portionQuantity} ${meal.portionUnit} • ${meal.nutrients.calories.toInt()} kcal',
                      style: TextStyle(fontSize: 13, color: context.appSlate),
                    ),
                    trailing: Icon(Icons.chevron_right_rounded, color: context.appSlate),
                    onTap: () {
                      context.push('/plan/suggestion-detail', extra: meal);
                    },
                  ),
                );
              }),
              const SizedBox(height: AppSpacing.md),

              PillButton(
                label: 'Log Today\'s Plan to Diary',
                icon: Icons.check_circle_outline_rounded,
                onPressed: () async {
                  for (final meal in planData.mealSuggestions) {
                    await sl<FoodRepository>().logMeal(
                      mealType: meal.mealType,
                      foodName: meal.foodName,
                      foodReference: meal.foodId,
                      quantity: meal.portionQuantity,
                      unit: meal.portionUnit,
                      totalGrams: meal.portionGrams,
                      nutrients: meal.nutrients,
                    );
                  }
                  if (!mounted) return;
                  BloomiToast.show(this.context, message: 'Day meals logged to Diary! 🌿');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
