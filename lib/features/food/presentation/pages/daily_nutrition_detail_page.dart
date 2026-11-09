import 'package:bloomi/app/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/macro_bars.dart';
import 'package:bloomi/features/food/domain/entities/food_diary_state_entity.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class DailyNutritionDetailPage extends StatelessWidget {
  const DailyNutritionDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        backgroundColor: context.appSurface,
        elevation: 0,
        leading: IconButton(
          icon: Icon(CupertinoIcons.arrow_left, color: context.appInk),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Nutrition: ${DateFormat('d MMM').format(now)}',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: context.appInk,
          ),
        ),
      ),
      body: StreamBuilder<FoodDiaryStateEntity>(
        stream: sl<FoodRepository>().watchFoodDiaryForDate(now),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting &&
              !snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.mint),
            );
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final state = snapshot.data ?? FoodDiaryStateEntity.empty(now);
          final totalKcal = state.dayTotals.calories;
          final proteinKcal = state.dayTotals.protein * 4;
          final carbsKcal = state.dayTotals.carbs * 4;
          final fatKcal = state.dayTotals.fat * 9;
          final macroKcalSum = proteinKcal + carbsKcal + fatKcal;

          final proteinPct = macroKcalSum > 0
              ? (proteinKcal / macroKcalSum * 100).toInt()
              : 0;
          final carbsPct = macroKcalSum > 0
              ? (carbsKcal / macroKcalSum * 100).toInt()
              : 0;
          final fatPct = macroKcalSum > 0
              ? (fatKcal / macroKcalSum * 100).toInt()
              : 0;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // 1. Macros Pie Chart Card
                Container(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  decoration: BoxDecoration(
                    color: context.appSurface,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(AppSpacing.cardRadius),
                    ),
                    boxShadow: context.appCardShadow,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Macronutrient Calorie Ratio',
                        style: TextStyle(
                          fontFamily: 'Baloo 2',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: context.appInk,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      SizedBox(
                        height: 180,
                        child: macroKcalSum == 0
                            ? Center(
                                child: Text(
                                  'No food logged for today yet.',
                                  style: TextStyle(color: context.appSlate),
                                ),
                              )
                            : PieChart(
                                PieChartData(
                                  sectionsSpace: 3,
                                  centerSpaceRadius: 40,
                                  sections: [
                                    PieChartSectionData(
                                      color: AppColors.peach,
                                      value: proteinKcal,
                                      title: '$proteinPct%',
                                      radius: 45,
                                      titleStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                        color: context.appInk,
                                      ),
                                    ),
                                    PieChartSectionData(
                                      color: AppColors.sky,
                                      value: carbsKcal,
                                      title: '$carbsPct%',
                                      radius: 45,
                                      titleStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                        color: context.appInk,
                                      ),
                                    ),
                                    PieChartSectionData(
                                      color: AppColors.butter,
                                      value: fatKcal,
                                      title: '$fatPct%',
                                      radius: 45,
                                      titleStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                        color: context.appInk,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildLegendDot(
                            context,
                            AppColors.peach,
                            'Protein ($proteinPct%)',
                          ),
                          _buildLegendDot(context, AppColors.sky, 'Carbs ($carbsPct%)'),
                          _buildLegendDot(context, AppColors.butter, 'Fat ($fatPct%)'),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.md),

                // 2. Targets Comparison Card
                Container(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  decoration: BoxDecoration(
                    color: context.appSurface,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(AppSpacing.cardRadius),
                    ),
                    boxShadow: context.appCardShadow,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Daily Targets vs Actual',
                        style: TextStyle(
                          fontFamily: 'Baloo 2',
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: context.appInk,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      Text(
                        '${totalKcal.toInt()} / ${state.targetCalories.toInt()} kcal',
                        style: const TextStyle(
                          fontFamily: 'Baloo 2',
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: AppColors.mint,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      MacroBars(
                        protein: MacroData(
                          name: 'Protein',
                          currentGrams: state.dayTotals.protein,
                          targetGrams: state.target?.protein ?? 75.0,
                          color: AppColors.peach,
                        ),
                        carbs: MacroData(
                          name: 'Carbs',
                          currentGrams: state.dayTotals.carbs,
                          targetGrams: state.target?.carbs ?? 220.0,
                          color: AppColors.sky,
                        ),
                        fat: MacroData(
                          name: 'Fat',
                          currentGrams: state.dayTotals.fat,
                          targetGrams: state.target?.fat ?? 50.0,
                          color: AppColors.butter,
                        ),
                        fibre: MacroData(
                          name: 'Fibre',
                          currentGrams: state.dayTotals.fibre,
                          targetGrams: state.target?.fibre ?? 25.0,
                          color: AppColors.mint,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.md),

                // 3. Meal Distribution Card
                Container(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  decoration: BoxDecoration(
                    color: context.appSurface,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(AppSpacing.cardRadius),
                    ),
                    boxShadow: context.appCardShadow,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Calorie Breakdown by Meal',
                        style: TextStyle(
                          fontFamily: 'Baloo 2',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: context.appInk,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      _buildMealRow(
                        context,
                        'Breakfast',
                        state.breakfastTotals.calories,
                        totalKcal,
                      ),
                      _buildMealRow(
                        context,
                        'Lunch',
                        state.lunchTotals.calories,
                        totalKcal,
                      ),
                      _buildMealRow(
                        context,
                        'Snacks',
                        state.snackTotals.calories,
                        totalKcal,
                      ),
                      _buildMealRow(
                        context,
                        'Dinner',
                        state.dinnerTotals.calories,
                        totalKcal,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.md),

                // 4. Micronutrients Breakdown (Vitamins & Minerals)
                Container(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  decoration: BoxDecoration(
                    color: context.appSurface,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(AppSpacing.cardRadius),
                    ),
                    boxShadow: context.appCardShadow,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Micronutrients & Vitamins',
                        style: TextStyle(
                          fontFamily: 'Baloo 2',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: context.appInk,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Measured against standard ICMR / WHO daily RDAs',
                        style: TextStyle(fontSize: 12, color: context.appSlate),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      _buildMicroRow(context, 'Vitamin A', null, '900 mcg'),
                      _buildMicroRow(context, 'Vitamin C', null, '90 mg'),
                      _buildMicroRow(context, 'Vitamin D', null, '15 mcg'),
                      _buildMicroRow(context, 'Vitamin B12', null, '2.4 mcg'),
                      _buildMicroRow(context, 'Calcium', null, '1000 mg'),
                      _buildMicroRow(context, 'Iron', null, '18 mg'),
                      _buildMicroRow(context, 'Potassium', null, '2600 mg'),
                      _buildMicroRow(context, 'Magnesium', null, '350 mg'),
                      _buildMicroRow(context, 'Zinc', null, '11 mg'),
                      _buildMicroRow(context, 'Sodium', null, '< 2000 mg'),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.butter.withAlpha(context.isDarkMode ? 50 : 80),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.info_circle,
                              size: 16,
                              color: context.appInk,
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                'Bloomi explicitly displays "Data not available" when ingredient assays lack lab micronutrient metrics, rather than showing fake zero values.',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: context.appInk,
                                  height: 1.3,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.md),

                // 5. Kind wellness note
                Container(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  decoration: BoxDecoration(
                    color: AppColors.mint.withAlpha(context.isDarkMode ? 60 : 40),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(AppSpacing.cardRadius),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.info_circle,
                        color: context.appInk,
                        size: 20,
                      ),
                      const SizedBox(width: AppSpacing.sm),
                      Expanded(
                        child: Text(
                          'Bloomi is a gentle wellness tracker. Remember to listen to your body and enjoy nourishing meals.',
                          style: TextStyle(fontSize: 12, color: context.appInk),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildLegendDot(BuildContext context, Color color, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: context.appInk,
          ),
        ),
      ],
    );
  }

  Widget _buildMealRow(BuildContext context, String title, double mealKcal, double totalKcal) {
    final pct = totalKcal > 0 ? (mealKcal / totalKcal * 100).toInt() : 0;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: context.appInk),
          ),
          Text(
            '${mealKcal.toInt()} kcal ($pct%)',
            style: TextStyle(color: context.appSlate, fontSize: 13),
          ),
        ],
      ),
    );
  }

  Widget _buildMicroRow(BuildContext context, String name, double? currentVal, String rda) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: context.appInk,
                ),
              ),
              const SizedBox(width: 6),
              Text(
                '(RDA: $rda)',
                style: TextStyle(fontSize: 11, color: context.appSlate),
              ),
            ],
          ),
          currentVal != null
              ? Text(
                  currentVal.toStringAsFixed(1),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: context.appInk,
                  ),
                )
              : Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: context.appSlate.withAlpha(30),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    'Data not available',
                    style: TextStyle(
                      fontSize: 11,
                      fontStyle: FontStyle.italic,
                      color: context.appSlate,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
