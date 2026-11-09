import 'package:bloomi/core/localization/app_localizations.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';

import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/core/widgets/step_target_sheet.dart';
import 'package:bloomi/features/plan/domain/entities/daily_plan_entity.dart';
import 'package:bloomi/features/plan/domain/repositories/plan_repository.dart';
import 'package:bloomi/services/billing/billing_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DailyPlanPage extends StatefulWidget {
  const DailyPlanPage({super.key});

  @override
  State<DailyPlanPage> createState() => _DailyPlanPageState();
}

class _DailyPlanPageState extends State<DailyPlanPage> {
  DailyPlanBundleEntity? _bundle;
  bool _isLoading = true;
  bool _isPremium = false;
  String? _error;
  final ScrollController _scrollController = ScrollController();
  StreamSubscription<DailyPlanBundleEntity>? _planSub;
  StreamSubscription<bool>? _premiumSub;

  @override
  void initState() {
    super.initState();
    _checkPremium();
    _premiumSub = sl<BillingService>().onPremiumChanged.listen((val) {
      if (mounted) setState(() => _isPremium = val);
    });
    _loadPlan();
    _planSub = sl<PlanRepository>().watchDailyPlan().listen((plan) {
      if (mounted) {
        setState(() {
          _bundle = plan;
          _isLoading = false;
        });
      }
    });
  }

  Future<void> _checkPremium() async {
    final prem = await sl<BillingService>().isPremium();
    if (mounted) setState(() => _isPremium = prem);
  }

  @override
  void dispose() {
    _premiumSub?.cancel();
    _planSub?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _loadPlan({bool silent = false}) async {
    if (!silent) {
      setState(() {
        _isLoading = true;
        _error = null;
      });
    }
    try {
      final plan = await sl<PlanRepository>().generateDailyPlan();
      if (mounted) {
        setState(() {
          _bundle = plan;
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

  Future<void> _toggleChecklist(String key) async {
    await sl<PlanRepository>().toggleChecklistItem(
      itemKey: key,
      date: DateTime.now(),
    );
    // Reload silently without unmounting or resetting scroll offset
    await _loadPlan(silent: true);
  }

  Future<void> _openStepTargetModal(BuildContext context, int currentGoal) async {
    await showStepTargetModal(
      context,
      currentTarget: currentGoal,
      onTargetSaved: (newTarget) async {
        await sl<PlanRepository>().updateStepTarget(newTarget);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          context.tr('plan_title'),
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: context.appInk,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.slider_horizontal_3, color: context.appInk),
            tooltip: context.tr('plan_targets_title'),
            onPressed: () async {
              await context.push('/plan/goals');
              await _loadPlan(silent: true);
            },
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator(color: AppColors.mint))
          : _error != null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(CupertinoIcons.exclamationmark_circle, size: 48, color: context.appSlate),
                      const SizedBox(height: AppSpacing.sm),
                      Text('Could not load plan: $_error', style: TextStyle(fontWeight: FontWeight.w700, color: context.appInk)),
                      const SizedBox(height: AppSpacing.md),
                      PillButton(
                        label: 'Retry',
                        variant: PillButtonVariant.primary,
                        onPressed: _loadPlan,
                      ),
                    ],
                  ),
                )
              : _isPremium
                  ? _buildPlanContent(_bundle!)
                  : ListView(
                      padding: const EdgeInsets.all(AppSpacing.md),
                      children: [
                        Container(
                          padding: const EdgeInsets.all(AppSpacing.lg),
                          decoration: BoxDecoration(
                            color: context.appSurface,
                            borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                            boxShadow: context.appCardShadow,
                            border: Border.all(color: AppColors.softOrange, width: 1.5),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Color.alphaBlend(AppColors.softOrange.withOpacity(0.15), context.appSurface),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(CupertinoIcons.lock_fill, color: AppColors.softOrange, size: 28),
                              ),
                              const SizedBox(height: AppSpacing.sm),
                              Text(
                                'Daily Target Plan 🔒',
                                style: TextStyle(
                                  fontFamily: 'Baloo 2',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: context.appInk,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                'Personalized calorie targets, macro distribution, and daily guidance are exclusively available on Bloomi Premium.',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 13, color: context.appSlate, height: 1.4),
                              ),
                              const SizedBox(height: AppSpacing.md),
                              PillButton(
                                label: 'Unlock with Premium 👑',
                                variant: PillButtonVariant.primary,
                                onPressed: () => context.push('/settings/premium'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
    );
  }

  Widget _buildPlanContent(DailyPlanBundleEntity bundle) {
    final progress = bundle.totalCaloriesTarget > 0
        ? (bundle.consumedCalories / bundle.totalCaloriesTarget).clamp(0.0, 1.0)
        : 0.0;

    return ListView(
      key: const PageStorageKey('daily_plan_list_view'),
      controller: _scrollController,
      padding: const EdgeInsets.all(AppSpacing.md),
      children: [
        // Daily Summary Card
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Remaining Calories',
                        style: TextStyle(fontSize: 12, color: context.appSlate, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '${bundle.remainingCalories.toInt()} kcal',
                        style: TextStyle(
                          fontFamily: 'Baloo 2',
                          fontWeight: FontWeight.w800,
                          fontSize: 28,
                          color: context.appInk,
                        ),
                      ),
                    ],
                  ),
                  MascotWidget(
                    state: bundle.remainingCalories < 200 && bundle.consumedCalories > 0
                        ? MascotState.cheer
                        : MascotState.happy,
                    size: 54,
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.sm),
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 10,
                  backgroundColor: context.appBackground,
                  valueColor: const AlwaysStoppedAnimation(AppColors.mint),
                ),
              ),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Consumed: ${bundle.consumedCalories.toInt()} kcal',
                    style: TextStyle(fontSize: 11, color: context.appSlate, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Target: ${bundle.totalCaloriesTarget.toInt()} kcal',
                    style: TextStyle(fontSize: 11, color: context.appSlate, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.md),

        // AI Plan Coach Insight Card
        _buildPlanInsightCard(bundle),
        const SizedBox(height: AppSpacing.md),

        // Active Nutrition Plan & Target Split Card
        _buildActivePlanCard(bundle),
        const SizedBox(height: AppSpacing.md),

        // Activity Targets Card
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
                'Activity Targets',
                style: TextStyle(
                  fontFamily: 'Baloo 2',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: context.appInk,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Row(
                children: [
                  Expanded(
                    child: _buildActivityItem(
                      icon: CupertinoIcons.compass,
                      label: 'Daily Steps',
                      value: '${bundle.stepsRecorded} / ${bundle.targets.steps}',
                      color: AppColors.mint,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: _buildActivityItem(
                      icon: CupertinoIcons.timer,
                      label: 'Workout Mins',
                      value: '${bundle.workoutMinutesRecorded} / 30 mins',
                      color: AppColors.lilac,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.md),

        // Daily Checklist (Synced with real data)
        _buildSyncedChecklist(bundle),

        const SizedBox(height: AppSpacing.md),

        // Weekly Plan Banner Card
        _buildWeeklyPlanBanner(bundle),

        const SizedBox(height: AppSpacing.xl),
      ],
    );
  }

  Widget _buildPlanInsightCard(DailyPlanBundleEntity bundle) {
    String insight;
    if (bundle.remainingCalories > 600) {
      insight = 'You have ${bundle.remainingCalories.toInt()} kcal left. Balance your remaining calories with a nutrient-rich lunch or dinner with high protein and fibre!';
    } else if (bundle.remainingCalories > 100) {
      insight = 'On track today! A light snack or evening meal will hit your daily calorie target smoothly without going over.';
    } else {
      insight = 'Daily calorie goal reached! Focus on hydration and restful recovery for the rest of the day. 🌟';
    }

    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: context.appMint.withAlpha(45),
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        border: Border.all(color: (context.isDarkMode ? AppColors.darkMint : AppColors.mintDark).withAlpha(40)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(CupertinoIcons.lightbulb, color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark, size: 22),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daily Plan Coach Insight',
                  style: TextStyle(
                    fontFamily: 'Baloo 2',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: context.appInk,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  insight,
                  style: TextStyle(fontSize: 12.5, color: context.appInk, height: 1.35),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActivePlanCard(DailyPlanBundleEntity bundle) {
    final t = bundle.targets;
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        boxShadow: context.appCardShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Active Nutrition Plan',
                style: TextStyle(
                  fontFamily: 'Baloo 2',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: context.appInk,
                ),
              ),
              InkWell(
                onTap: () async {
                  await context.push('/plan/goals');
                  await _loadPlan(silent: true);
                },
                child: Text(
                  'Edit Plan',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _buildPlanPill('Daily Target', '${t.calories.toInt()} kcal', AppColors.mint),
              const SizedBox(width: 6),
              _buildPlanPill('Protein', '${t.protein.toInt()}g', AppColors.lilac),
              const SizedBox(width: 6),
              _buildPlanPill('Carbs', '${t.carbs.toInt()}g', AppColors.butter),
              const SizedBox(width: 6),
              _buildPlanPill('Water', '${t.waterMl.toInt()}ml', AppColors.sky),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPlanPill(String label, String value, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        decoration: BoxDecoration(
          color: color.withAlpha(45),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(label, style: TextStyle(fontSize: 10, color: context.appSlate, fontWeight: FontWeight.w600)),
            const SizedBox(height: 2),
            Text(value, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: context.appInk)),
          ],
        ),
      ),
    );
  }

  Widget _buildSyncedChecklist(DailyPlanBundleEntity bundle) {
    final waterDone = bundle.waterLoggedMl >= bundle.targets.waterMl.toInt() ||
        bundle.checklistItems.any((c) => c.item == 'water' && c.done);

    final loggedCount = bundle.mealSuggestions.where((m) => m.isLogged).length;
    final mealsDone = loggedCount >= 3 ||
        bundle.checklistItems.any((c) => c.item == 'meals' && c.done);

    final stepsDone = (bundle.stepsRecorded >= bundle.targets.steps && bundle.targets.steps > 0) ||
        bundle.checklistItems.any((c) => c.item == 'steps' && c.done);

    final sleepDone = bundle.checklistItems.any((c) => c.item == 'sleep' && c.done);

    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
        boxShadow: context.appCardShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Daily Checklist',
                style: TextStyle(
                  fontFamily: 'Baloo 2',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: context.appInk,
                ),
              ),
              Text(
                'Synced with live data',
                style: TextStyle(fontSize: 11, color: context.appSlate.withAlpha(200)),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xs),
          _buildChecklistRow(
            key: 'water',
            title: 'Drink ${bundle.targets.waterMl.toInt()} ml water',
            subtitle: '${bundle.waterLoggedMl} / ${bundle.targets.waterMl.toInt()} ml logged (${((bundle.waterLoggedMl / (bundle.targets.waterMl > 0 ? bundle.targets.waterMl : 1)) * 100).clamp(0, 100).toInt()}%)',
            isDone: waterDone,
          ),
          _buildChecklistRow(
            key: 'meals',
            title: 'Log all 3 main meals',
            subtitle: '$loggedCount of 3 main meals logged today',
            isDone: mealsDone,
          ),
          _buildChecklistRow(
            key: 'steps',
            title: 'Reach ${bundle.targets.steps} daily steps',
            subtitle: '${bundle.stepsRecorded} / ${bundle.targets.steps} steps taken',
            isDone: stepsDone,
            trailing: IconButton(
              icon: Icon(CupertinoIcons.pencil, size: 18, color: context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E)),
              tooltip: 'Change Step Target',
              onPressed: () => _openStepTargetModal(context, bundle.targets.steps),
            ),
          ),
          _buildChecklistRow(
            key: 'sleep',
            title: 'Get ${bundle.targets.sleepHours.toStringAsFixed(1)} hours of sleep',
            subtitle: 'Restful night recovery',
            isDone: sleepDone,
          ),
        ],
      ),
    );
  }

  Widget _buildChecklistRow({
    required String key,
    required String title,
    required String subtitle,
    required bool isDone,
    Widget? trailing,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Checkbox(
        value: isDone,
        activeColor: AppColors.mint,
        checkColor: context.appInk,
        onChanged: (_) => _toggleChecklist(key),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
          color: context.appInk,
          decoration: isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 11, color: context.appSlate),
      ),
      trailing: trailing,
    );
  }

  Widget _buildActivityItem({
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.sm),
      decoration: BoxDecoration(
        color: color.withAlpha(40),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 16, color: context.appInk),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: context.appSlate),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(fontFamily: 'Baloo 2', fontWeight: FontWeight.w700, fontSize: 15, color: context.appInk),
          ),
        ],
      ),
    );
  }

  Widget _buildWeeklyPlanBanner(DailyPlanBundleEntity bundle) {
    return InkWell(
      onTap: () => context.push('/plan/weekly-plan'),
      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.mint.withAlpha(120), AppColors.sky.withAlpha(120)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        ),
        child: Row(
          children: [
            Icon(CupertinoIcons.calendar, color: context.appInk, size: 28),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'View 7-Day Weekly Plan',
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: context.appInk,
                    ),
                  ),
                  Text(
                    'Explore planned meals, weekly calorie totals & macro split',
                    style: TextStyle(fontSize: 12, color: context.appInk),
                  ),
                ],
              ),
            ),
            Icon(CupertinoIcons.chevron_forward, size: 16, color: context.appInk),
          ],
        ),
      ),
    );
  }
}
