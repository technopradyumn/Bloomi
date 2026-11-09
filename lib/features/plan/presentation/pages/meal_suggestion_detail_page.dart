import 'package:bloomi/app/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/macro_bars.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/food/domain/entities/nutrient_snapshot_entity.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';
import 'package:bloomi/features/plan/domain/entities/meal_suggestion_entity.dart';
import 'package:bloomi/features/plan/domain/repositories/plan_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MealSuggestionDetailPage extends StatefulWidget {
  final MealSuggestionEntity? suggestion;

  const MealSuggestionDetailPage({
    super.key,
    this.suggestion,
  });

  @override
  State<MealSuggestionDetailPage> createState() =>
      _MealSuggestionDetailPageState();
}

class _MealSuggestionDetailPageState
    extends State<MealSuggestionDetailPage> {
  late MealSuggestionEntity _current;

  @override
  void initState() {
    super.initState();
    _current = widget.suggestion ??
        const MealSuggestionEntity(
          foodId: 'sample-1',
          foodName: 'Mixed Vegetable Khichdi',
          mealType: 'lunch',
          portionGrams: 200.0,
          portionUnit: 'bowl',
          portionQuantity: 1.0,
          nutrients: NutrientSnapshotEntity(
            calories: 380,
            protein: 12,
            carbs: 64,
            fat: 8,
            fibre: 6,
          ),
        );
  }

  Future<void> _logMeal() async {
    await sl<FoodRepository>().logMeal(
      mealType: _current.mealType,
      foodName: _current.foodName,
      foodReference: _current.foodId,
      quantity: _current.portionQuantity,
      unit: _current.portionUnit,
      totalGrams: _current.portionGrams,
      nutrients: _current.nutrients,
    );
    if (mounted) {
      BloomiToast.show(context, message: 'Logged ${_current.foodName}! ✨');
      if (context.canPop()) {
        context.pop();
      }
    }
  }

  void _swapMeal() {
    sl<PlanRepository>().cycleSwap(_current.mealType);
    BloomiToast.show(context, message: 'Suggestion swapped! Refreshing plan...');
    if (context.canPop()) {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Meal Suggestion',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: context.appInk,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.md),
        children: [
          // Hero Dish Card
          Container(
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: BoxDecoration(
              color: context.appSurface,
              borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
              boxShadow: context.appCardShadow,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.peach.withAlpha(context.isDarkMode ? 90 : 70),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    _current.mealType.toUpperCase(),
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      color: context.appInk,
                    ),
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  _current.foodName,
                  style: TextStyle(
                    fontFamily: 'Baloo 2',
                    fontWeight: FontWeight.w800,
                    fontSize: 26,
                    color: context.appInk,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Recommended portion: ${_current.portionGrams.toInt()}g (${_current.portionQuantity.toInt()} ${_current.portionUnit})',
                  style: TextStyle(fontSize: 14, color: context.appSlate, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: AppSpacing.md),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                      decoration: const BoxDecoration(
                        color: AppColors.mint,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Text(
                        '${_current.nutrients.calories.toInt()} kcal',
                        style: TextStyle(
                          fontFamily: 'Baloo 2',
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: context.appInk,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.md),

          // Macronutrient Breakdown
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: context.appSurface,
              borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
              boxShadow: context.appCardShadow,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nutrient Breakdown',
                  style: TextStyle(
                    fontFamily: 'Baloo 2',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: context.appInk,
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                MacroBars(
                  protein: MacroData(
                    name: 'Protein',
                    currentGrams: _current.nutrients.protein,
                    targetGrams: 75,
                    color: AppColors.lilac,
                  ),
                  carbs: MacroData(
                    name: 'Carbs',
                    currentGrams: _current.nutrients.carbs,
                    targetGrams: 220,
                    color: AppColors.butter,
                  ),
                  fat: MacroData(
                    name: 'Fat',
                    currentGrams: _current.nutrients.fat,
                    targetGrams: 50,
                    color: AppColors.sky,
                  ),
                  fibre: MacroData(
                    name: 'Fibre',
                    currentGrams: _current.nutrients.fibre,
                    targetGrams: 25,
                    color: AppColors.mint,
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildNutrientStat(context, 'Protein', '${_current.nutrients.protein.toInt()}g', AppColors.lilac),
                    _buildNutrientStat(context, 'Carbs', '${_current.nutrients.carbs.toInt()}g', AppColors.butter),
                    _buildNutrientStat(context, 'Fat', '${_current.nutrients.fat.toInt()}g', AppColors.sky),
                    _buildNutrientStat(context, 'Fibre', '${_current.nutrients.fibre.toInt()}g', AppColors.mint),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.md),

          // Mindful Note
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: AppColors.mint.withAlpha(40),
              borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
              border: Border.all(color: AppColors.mint.withAlpha(100)),
            ),
            child: Row(
              children: [
                const Icon(CupertinoIcons.sparkles, color: AppColors.mint, size: 24),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: Text(
                    'Selected to balance your remaining daily calories and macronutrient ratios gracefully.',
                    style: TextStyle(fontSize: 12, color: context.appInk, height: 1.4, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          // Action Buttons
          PillButton(
            label: 'Log in One Tap',
            icon: CupertinoIcons.checkmark_circle_fill,
            variant: PillButtonVariant.primary,
            onPressed: _logMeal,
          ),
          const SizedBox(height: AppSpacing.sm),
          PillButton(
            label: 'Swap for Another Option',
            icon: CupertinoIcons.arrow_right_arrow_left,
            variant: PillButtonVariant.secondary,
            onPressed: _swapMeal,
          ),
          const SizedBox(height: AppSpacing.xl),
        ],
      ),
    );
  }

  Widget _buildNutrientStat(BuildContext context, String label, String value, Color color) {
    return Column(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(height: 4),
        Text(value, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16, color: context.appInk)),
        Text(label, style: TextStyle(fontSize: 11, color: context.appSlate)),
      ],
    );
  }
}
