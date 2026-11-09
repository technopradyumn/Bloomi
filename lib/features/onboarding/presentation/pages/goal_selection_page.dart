import 'package:bloomi/app/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/utils/health_calculators.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/metric_animations/floating_onboarding_illustration.dart';
import 'package:bloomi/core/widgets/metric_animations/health_metric_animations.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/onboarding/data/local/onboarding_local_data_source.dart';
import 'package:bloomi/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class GoalSelectionPage extends StatefulWidget {
  final bool isStandalone;
  final VoidCallback? onNext;
  final VoidCallback? onBack;

  const GoalSelectionPage({
    super.key,
    this.isStandalone = false,
    this.onNext,
    this.onBack,
  });

  @override
  State<GoalSelectionPage> createState() => _GoalSelectionPageState();
}

class _GoalSelectionPageState extends State<GoalSelectionPage> {
  bool _isSavingStandalone = false;

  void _handleBack() {
    if (widget.isStandalone) {
      context.pop();
      return;
    }
    if (widget.onBack != null) {
      widget.onBack!();
    } else {
      context.go('/onboarding/body');
    }
  }

  Future<void> _handleContinue() async {
    if (widget.isStandalone) {
      setState(() => _isSavingStandalone = true);
      try {
        final profile = context.read<OnboardingBloc>().state.profile;
        await sl<OnboardingLocalDataSource>().saveProfileAndTargets(
          profile: profile,
        );
        if (!mounted) return;
        BloomiToast.show(context, message: 'Goal updated successfully! ✨');
        context.pop();
      } catch (e) {
        if (!mounted) return;
        BloomiToast.show(context, message: 'Error updating goal');
      } finally {
        if (mounted) setState(() => _isSavingStandalone = false);
      }
      return;
    }

    if (widget.onNext != null) {
      widget.onNext!();
    } else {
      context.go('/onboarding/lifestyle');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        final profile = state.profile;
        final age = profile.birthDate != null
            ? HealthCalculators.calculateAge(profile.birthDate!)
            : 25;

        // Calculate personalized targets per goal dynamically for THIS specific user
        int calcTarget(HealthGoal g) {
          return HealthCalculators.getPersonalizedTargetCalories(
            weightKg: profile.weightKg,
            heightCm: profile.heightCm,
            age: age,
            gender: profile.gender,
            activityLevel: profile.activityLevel,
            goal: g,
          );
        }

        final goalOptions = [
          (
            HealthGoal.loseGently,
            'Gentle Weight Loss',
            'Sustainable ~0.25 kg/wk deficit. Easy to maintain with no hunger pangs.',
            calcTarget(HealthGoal.loseGently),
            CupertinoIcons.arrow_down_right,
            AppColors.mint,
          ),
          (
            HealthGoal.loseStandard,
            'Standard Weight Loss',
            'Evidence-based ~500 kcal deficit (~0.5 kg/wk). Recommended by clinical nutrition research.',
            calcTarget(HealthGoal.loseStandard),
            CupertinoIcons.waveform_path_ecg,
            AppColors.sky,
          ),
          (
            HealthGoal.maintain,
            'Stay Healthy & Maintain',
            'Matches your calculated Total Daily Energy Expenditure (TDEE). Feel energized and vibrant.',
            calcTarget(HealthGoal.maintain),
            CupertinoIcons.heart_fill,
            AppColors.butter,
          ),
          (
            HealthGoal.gainMuscle,
            'Build Muscle & Strength',
            'Protein-dense slight surplus designed for strength training and muscle protein synthesis.',
            calcTarget(HealthGoal.gainMuscle),
            CupertinoIcons.bolt_fill,
            AppColors.peach,
          ),
          (
            HealthGoal.gainGentle,
            'Gentle Weight Gain',
            'Nourishing surplus for healthy, steady mass and energy replenishment.',
            calcTarget(HealthGoal.gainGentle),
            CupertinoIcons.arrow_up,
            AppColors.lilac,
          ),
        ];

        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, _) {
            if (didPop) return;
            _handleBack();
          },
          child: Scaffold(
            backgroundColor: context.appBackground,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(CupertinoIcons.arrow_left, color: context.appInk),
                onPressed: _handleBack,
              ),
              title: widget.isStandalone
                  ? Text(
                      'Health Goals',
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: context.appInk,
                      ),
                    )
                  : null,
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenSide,
                        vertical: AppSpacing.sm,
                      ),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 440),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (!widget.isStandalone) ...[
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: AppSpacing.md),
                                  child: FloatingIllustration(
                                    distance: 8,
                                    child: Container(
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: AppColors.butter.withAlpha(context.isDarkMode ? 60 : 40),
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.butter.withAlpha(50),
                                            blurRadius: 16,
                                          ),
                                        ],
                                      ),
                                      child: const HealthMetricAnimation(
                                        metricType: 'calories',
                                        size: 48,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'STEP 4 OF 6',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  letterSpacing: 1.2,
                                  color: context.appSlate,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Choose your wellness goal',
                                style: TextStyle(
                                  fontFamily: 'Baloo 2',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 28,
                                  color: context.appInk,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                'Personalized daily calories calculated scientifically from your height, weight, sex, and age using the Mifflin-St Jeor formula.',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: context.appSlate,
                                ),
                              ),
                              const SizedBox(height: AppSpacing.lg),
                            ],

                            // Goal selection cards with dynamic personalized target calories
                            ...goalOptions.map((opt) {
                              final goal = opt.$1;
                              final title = opt.$2;
                              final desc = opt.$3;
                              final targetKcal = opt.$4;
                              final icon = opt.$5;
                              final cardColor = opt.$6;
                              final isSelected = profile.goal == goal;

                              return Padding(
                                padding:
                                    const EdgeInsets.only(bottom: AppSpacing.sm),
                                child: Material(
                                  color: isSelected
                                      ? cardColor.withAlpha(120)
                                      : context.appSurface,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(AppSpacing.cardRadius),
                                    ),
                                    side: BorderSide(
                                      color: isSelected
                                          ? cardColor
                                          : Colors.transparent,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      context
                                          .read<OnboardingBloc>()
                                          .add(OnboardingGoalUpdated(goal));
                                    },
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(AppSpacing.cardRadius),
                                    ),
                                    splashColor: cardColor.withAlpha(60),
                                    highlightColor: cardColor.withAlpha(30),
                                    child: Padding(
                                      padding: const EdgeInsets.all(AppSpacing.md),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              color: cardColor,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              icon,
                                              color: context.appInk,
                                              size: 24,
                                            ),
                                          ),
                                          const SizedBox(width: AppSpacing.md),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        title,
                                                        style: TextStyle(
                                                          fontFamily: 'Nunito',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 16,
                                                          color: context.appInk,
                                                        ),
                                                      ),
                                                    ),
                                                    // Personalized target calories badge
                                                    Container(
                                                      padding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                        horizontal: 10,
                                                        vertical: 4,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: cardColor,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                          12,
                                                        ),
                                                      ),
                                                      child: Text(
                                                        '$targetKcal kcal',
                                                        style:
                                                          TextStyle(
                                                          fontFamily: 'Baloo 2',
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontSize: 13,
                                                          color: context.appInk,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 4),
                                                Text(
                                                  desc,
                                                  style: TextStyle(
                                                    fontFamily: 'Nunito',
                                                    fontSize: 13,
                                                    color: context.appSlate,
                                                    height: 1.3,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                            const SizedBox(height: AppSpacing.md),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // PINNED NON-SCROLLABLE BOTTOM BUTTON
                  Container(
                    padding: const EdgeInsets.fromLTRB(
                      AppSpacing.screenSide,
                      AppSpacing.sm,
                      AppSpacing.screenSide,
                      AppSpacing.md,
                    ),
                    decoration: BoxDecoration(
                      color: context.appBackground,
                      boxShadow: context.appCardShadow,
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 440),
                      child: PillButton(
                        label: widget.isStandalone
                            ? 'Save Changes'
                            : 'Continue to Lifestyle',
                        icon: widget.isStandalone
                            ? CupertinoIcons.checkmark
                            : CupertinoIcons.arrow_right,
                        isLoading: _isSavingStandalone,
                        fullWidth: true,
                        height: 52,
                        onPressed: _handleContinue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
