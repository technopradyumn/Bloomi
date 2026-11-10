import 'package:bloomi/core/localization/app_localizations.dart';
import 'dart:math' as math;
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/food/data/models/nutrient_snapshot_model.dart';
import 'package:bloomi/features/health/domain/entities/health_overview_entity.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:bloomi/features/plan/domain/repositories/plan_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DailyDayBalance {
  final DateTime date;
  final String dayLabel;
  final double intake;
  final double burned;
  final double workoutBurned;
  final bool isToday;

  DailyDayBalance({
    required this.date,
    required this.dayLabel,
    required this.intake,
    required this.burned,
    required this.workoutBurned,
    required this.isToday,
  });

  double get net => intake - burned;
}

class CaloriesInOutCard extends StatefulWidget {
  final VoidCallback? onBurnedTap;
  final VoidCallback? onIntakeTap;

  const CaloriesInOutCard({
    super.key,
    this.onBurnedTap,
    this.onIntakeTap,
  });

  @override
  State<CaloriesInOutCard> createState() => _CaloriesInOutCardState();
}

class _CaloriesInOutCardState extends State<CaloriesInOutCard> {
  bool _show7DayView = false;
  int? _selectedDayIndex;
  late final Stream<HealthOverviewEntity> _healthStream;
  late final Stream<List<MealLog>> _mealStream;

  @override
  void initState() {
    super.initState();
    _healthStream = sl<HealthRepository>().watchHealthOverview();
    final db = sl<AppDatabase>();
    _mealStream = (db.select(db.mealLogs)..where((t) => t.deleted.equals(false))).watch();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<HealthOverviewEntity>(
      stream: _healthStream,
      builder: (context, healthSnapshot) {
        final healthData = healthSnapshot.data;
        final bundle = healthData?.bundle;
        final todayWorkouts = healthData?.todayWorkouts ?? [];

        return StreamBuilder<List<MealLog>>(
          stream: _mealStream,
          builder: (context, mealSnapshot) {
            final now = DateTime.now();
            final todayStart = DateTime(now.year, now.month, now.day);
            final todayEnd = DateTime(now.year, now.month, now.day, 23, 59, 59);

            final allMeals = mealSnapshot.data ?? [];
            final todayMeals = allMeals.where((m) =>
                !m.deleted &&
                m.date.isAfter(todayStart.subtract(const Duration(seconds: 1))) &&
                m.date.isBefore(todayEnd.add(const Duration(seconds: 1))));

            double todayIntake = 0.0;
            for (final m in todayMeals) {
              final snap = NutrientSnapshotModel.fromJson(m.computedNutrientsSnapshot);
              todayIntake += snap.calories;
            }

            final workoutBurned = todayWorkouts.fold<double>(
              0.0,
              (acc, w) => acc + w.calories,
            );

            final manualWorkoutBurned = todayWorkouts
                .where((w) => !w.source.toLowerCase().contains('health connect'))
                .fold<double>(0.0, (acc, w) => acc + w.calories);

            final activeBurned = bundle?.activeCalories ?? 0.0;
            final todayBurned = activeBurned + manualWorkoutBurned;

            final net = todayIntake - todayBurned;
            final ratio = todayBurned > 0 ? (todayIntake / todayBurned) : null;

            return FutureBuilder<Target?>(
              future: sl<PlanRepository>().getTargets(),
              builder: (context, targetSnapshot) {
                final targetKcal = targetSnapshot.data?.calories ?? 2000.0;

                // 7-Day History Generation
                final List<DailyDayBalance> last7Days = [];
                for (int i = 6; i >= 0; i--) {
                  final day = now.subtract(Duration(days: i));
                  final dayStart = DateTime(day.year, day.month, day.day);
                  final dayEnd = DateTime(day.year, day.month, day.day, 23, 59, 59);
                  final isToday = i == 0;

                  final dayMeals = allMeals.where((m) =>
                      !m.deleted &&
                      m.date.isAfter(dayStart.subtract(const Duration(seconds: 1))) &&
                      m.date.isBefore(dayEnd.add(const Duration(seconds: 1))));

                  double dayIntake = 0.0;
                  for (final m in dayMeals) {
                    final snap = NutrientSnapshotModel.fromJson(m.computedNutrientsSnapshot);
                    dayIntake += snap.calories;
                  }

                  double dayWorkoutsKcal = 0.0;
                  if (isToday) {
                    dayWorkoutsKcal = workoutBurned;
                  }

                  final double dayBurned = isToday ? todayBurned : dayWorkoutsKcal;

                  last7Days.add(DailyDayBalance(
                    date: day,
                    dayLabel: isToday ? 'Today' : DateFormat('E').format(day),
                    intake: dayIntake,
                    burned: dayBurned,
                    workoutBurned: dayWorkoutsKcal,
                    isToday: isToday,
                  ));
                }

                return _buildCardContent(
                  context: context,
                  intake: todayIntake,
                  burned: todayBurned,
                  workoutBurned: workoutBurned,
                  activeBurned: activeBurned,
                  targetCalories: targetKcal,
                  net: net,
                  ratio: ratio,
                  last7Days: last7Days,
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildCardContent({
    required BuildContext context,
    required double intake,
    required double burned,
    required double workoutBurned,
    required double activeBurned,
    required double targetCalories,
    required double net,
    required double? ratio,
    required List<DailyDayBalance> last7Days,
  }) {
    final hasIntake = intake > 0;
    final hasBurned = burned > 0;

    // Generate accurate, dynamic insights based strictly on real data
    final List<String> insights = [];

    if (hasIntake && hasBurned) {
      if (net > 50) {
        insights.add('You consumed ${net.round()} kcal more than you burned today (surplus).');
      } else if (net < -50) {
        insights.add('You burned ${(-net).round()} kcal more than you consumed today (deficit).');
      } else {
        insights.add('Your intake and calorie burn are closely balanced today! ⚖️');
      }
    }

    if (targetCalories > 0 && hasIntake) {
      final diffGoal = targetCalories - intake;
      if (diffGoal > 50) {
        insights.add('You are ${diffGoal.round()} kcal under your daily goal.');
      } else if (diffGoal < -50) {
        insights.add('You exceeded your daily goal by ${(-diffGoal).round()} kcal.');
      } else {
        insights.add('Right on track with your daily calorie goal! 🎯');
      }
    }

    if (workoutBurned > 0) {
      insights.add('Workouts burned ${workoutBurned.round()} kcal today.');
    }

    if (!hasIntake) {
      insights.add('No meals logged yet today. Track your meals to see your intake.');
    }

    if (!hasBurned && !hasIntake) {
      insights.add('Log a meal or workout session to start your daily energy balance.');
    } else if (!hasBurned) {
      insights.add('No workouts recorded yet today. Stay active to boost your burn!');
    }

    // Max value for progress scaling
    final maxScale = math.max(math.max(intake, burned), targetCalories);
    final intakeFraction = maxScale > 0 ? (intake / maxScale).clamp(0.0, 1.0) : 0.0;
    final burnedFraction = maxScale > 0 ? (burned / maxScale).clamp(0.0, 1.0) : 0.0;

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
          // Header Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: AppColors.peach.withAlpha(context.isDarkMode ? 80 : 255),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(CupertinoIcons.flame_fill, color: AppColors.softOrange, size: 18),
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        'Calories In vs Out',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Baloo 2',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: context.appInk,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 6),
              // Net badge
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: net >= 0
                      ? AppColors.peach.withAlpha(context.isDarkMode ? 70 : 60)
                      : AppColors.mint.withAlpha(context.isDarkMode ? 70 : 60),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      net >= 0 ? CupertinoIcons.arrow_up_right : CupertinoIcons.arrow_down_right,
                      size: 13,
                      color: net >= 0 ? AppColors.softOrange : (context.isDarkMode ? AppColors.darkMint : AppColors.mintDark),
                    ),
                    const SizedBox(width: 3),
                    Text(
                      net == 0
                          ? 'Net 0'
                          : '${net > 0 ? '+' : ''}${net.round()} net',
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: net >= 0 ? AppColors.softOrange : (context.isDarkMode ? AppColors.darkMint : AppColors.mintDark),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),

          // Stat Cards: Intake, Burned, Net, Ratio
          Row(
            children: [
              // Intake
              Expanded(
                child: _buildMetricTile(
                  context: context,
                  label: 'Intake',
                  value: hasIntake ? '${intake.round()}' : '0',
                  unit: 'kcal',
                  color: AppColors.sky,
                  icon: CupertinoIcons.cart_fill,
                  onTap: widget.onIntakeTap,
                ),
              ),
              const SizedBox(width: 8),
              // Burned
              Expanded(
                child: _buildMetricTile(
                  context: context,
                  label: 'Burned',
                  value: hasBurned ? '${burned.round()}' : '0',
                  unit: 'kcal',
                  color: AppColors.peach,
                  icon: CupertinoIcons.flame_fill,
                  onTap: widget.onBurnedTap,
                ),
              ),
              const SizedBox(width: 8),
              // Ratio
              Expanded(
                child: _buildMetricTile(
                  context: context,
                  label: 'Ratio (In/Out)',
                  value: ratio != null ? '${ratio.toStringAsFixed(2)}x' : '--',
                  unit: '',
                  color: AppColors.lilac,
                  icon: CupertinoIcons.equal_circle_fill,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),

          // Visual Progress Bars: Intake vs Burned
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Energy Balance',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: context.appSlate),
                  ),
                  Text(
                    'Goal: ${targetCalories.round()} kcal',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: context.appSlate),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Intake Progress Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(width: 8, height: 8, decoration: const BoxDecoration(color: AppColors.sky, shape: BoxShape.circle)),
                      const SizedBox(width: 6),
                      Text(
                        'Intake: ${intake.round()} kcal',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: context.appInk),
                      ),
                    ],
                  ),
                  Text(
                    maxScale > 0 ? '${((intake / maxScale) * 100).round()}%' : '0%',
                    style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: AppColors.sky),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Container(
                  height: 9,
                  width: double.infinity,
                  color: context.isDarkMode ? const Color(0xFF334155) : const Color(0xFFE2E8F0),
                  child: FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: intakeFraction,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.sky,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Burned Progress Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(width: 8, height: 8, decoration: const BoxDecoration(color: AppColors.softOrange, shape: BoxShape.circle)),
                      const SizedBox(width: 6),
                      Text(
                        'Burned: ${burned.round()} kcal',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: context.appInk),
                      ),
                    ],
                  ),
                  Text(
                    maxScale > 0 ? '${((burned / maxScale) * 100).round()}%' : '0%',
                    style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: AppColors.softOrange),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Container(
                  height: 9,
                  width: double.infinity,
                  color: context.isDarkMode ? const Color(0xFF334155) : const Color(0xFFE2E8F0),
                  child: FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: burnedFraction,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.softOrange,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),

          // Real Data Insights Section
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: context.isDarkMode ? const Color(0xFF1E293B) : const Color(0xFFF8FAFC),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: context.appBorderColor),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(CupertinoIcons.sparkles, color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark, size: 16),
                    const SizedBox(width: 6),
                    Text(
                      'Daily Insights',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: context.appInk,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                ...insights.map((msg) => Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('• ', style: TextStyle(color: context.appSlate, fontSize: 12)),
                          Expanded(
                            child: Text(
                              msg,
                              style: TextStyle(fontSize: 12, color: context.appInk, height: 1.3),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.sm),

          // 7-Day View Toggle Button
          InkWell(
            onTap: () {
              setState(() {
                _show7DayView = !_show7DayView;
              });
            },
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.calendar,
                        size: 16,
                        color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        '7-Day Trend',
                        style: TextStyle(
                          fontFamily: 'Baloo 2',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: context.appInk,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        _show7DayView ? 'Hide' : 'View',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark,
                        ),
                      ),
                      Icon(
                        _show7DayView ? CupertinoIcons.chevron_up : CupertinoIcons.chevron_down,
                        size: 14,
                        color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Expandable 7-Day Chart & Breakdown
          if (_show7DayView) ...[
            const SizedBox(height: AppSpacing.sm),
            _build7DayTrendView(context, last7Days),
          ],
        ],
      ),
    );
  }

  Widget _buildMetricTile({
    required BuildContext context,
    required String label,
    required String value,
    required String unit,
    required Color color,
    required IconData icon,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: color.withAlpha(context.isDarkMode ? 50 : 40),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withAlpha(context.isDarkMode ? 90 : 120)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 14, color: context.appInk),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: context.appSlate),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      value,
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                        color: context.appInk,
                      ),
                    ),
                  ),
                ),
                if (unit.isNotEmpty) ...[
                  const SizedBox(width: 2),
                  Text(
                    unit,
                    style: TextStyle(fontSize: 10, color: context.appSlate, fontWeight: FontWeight.w600),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _build7DayTrendView(BuildContext context, List<DailyDayBalance> days) {
    double maxDayVal = 100.0;
    for (final d in days) {
      if (d.intake > maxDayVal) maxDayVal = d.intake;
      if (d.burned > maxDayVal) maxDayVal = d.burned;
    }

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: context.isDarkMode ? const Color(0xFF1E293B) : const Color(0xFFF1F5F9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(width: 8, height: 8, decoration: const BoxDecoration(color: AppColors.sky, shape: BoxShape.circle)),
              const SizedBox(width: 4),
              Text('Intake', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: context.appSlate)),
              const SizedBox(width: 10),
              Container(width: 8, height: 8, decoration: const BoxDecoration(color: AppColors.softOrange, shape: BoxShape.circle)),
              const SizedBox(width: 4),
              Text(context.tr('home_calories_burned'), style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: context.appSlate)),
            ],
          ),
          const SizedBox(height: 6),

          // 7-day Bar Chart
          SizedBox(
            height: 110,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(days.length, (idx) {
                final day = days[idx];
                final intakeH = ((day.intake / maxDayVal) * 72).clamp(4.0, 72.0);
                final burnedH = ((day.burned / maxDayVal) * 72).clamp(4.0, 72.0);
                final isSelected = _selectedDayIndex == idx;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedDayIndex = isSelected ? null : idx;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // Intake bar
                          Container(
                            width: 8,
                            height: intakeH,
                            decoration: BoxDecoration(
                              color: AppColors.sky,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          const SizedBox(width: 2),
                          // Burned bar
                          Container(
                            width: 8,
                            height: burnedH,
                            decoration: BoxDecoration(
                              color: AppColors.softOrange,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text(
                        day.dayLabel,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: day.isToday || isSelected ? FontWeight.w800 : FontWeight.w600,
                          color: day.isToday
                              ? (context.isDarkMode ? AppColors.darkMint : AppColors.mintDark)
                              : (isSelected ? context.appInk : context.appSlate),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 8),

          // Selected day details or prompt
          if (_selectedDayIndex != null) ...[
            Divider(height: 1, color: context.appBorderColor),
            const SizedBox(height: 6),
            Builder(builder: (context) {
              final selected = days[_selectedDayIndex!];
              final dateStr = DateFormat('EEE, MMM d').format(selected.date);
              return Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dateStr,
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: context.appInk),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'In: ${selected.intake.round()} kcal  ·  Out: ${selected.burned.round()} kcal (${selected.net >= 0 ? '+' : ''}${selected.net.round()} net)',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 11, color: context.appSlate),
                    ),
                  ],
                ),
              );
            }),
          ] else ...[
            Text(
              'Tap any day bar to view that day\'s intake vs burned numbers.',
              style: TextStyle(fontSize: 11, color: context.appSlate),
            ),
          ],
        ],
      ),
    );
  }
}
