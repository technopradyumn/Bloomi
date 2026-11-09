import 'package:bloomi/app/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/macro_bars.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/core/widgets/metric_animations/floating_onboarding_illustration.dart';
import 'package:bloomi/core/widgets/pastel_stat_card.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bloomi/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:bloomi/services/health/health_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PlanReadyPage extends StatefulWidget {
  const PlanReadyPage({super.key, this.onBack});

  final VoidCallback? onBack;

  @override
  State<PlanReadyPage> createState() => _PlanReadyPageState();
}

class _PlanReadyPageState extends State<PlanReadyPage> {
  bool _isSaving = false;

  void _onStartJourney(BuildContext context, OnboardingState state) async {
    if (!state.profile.isDisclaimerAccepted) {
      BloomiToast.show(
        context,
        message: 'Please review and accept the wellness disclaimer to continue.',
        icon: CupertinoIcons.info_circle,
      );
      return;
    }

    // Mandatory Health Connect check
    final healthService = sl<HealthService>();
    final healthAvail = await healthService.checkHealthConnectAvailability();
    if (healthAvail != HealthConnectAvailability.unsupportedPlatform) {
      final hasHealth = await healthService.hasPermissions();
      if (!hasHealth) {
        if (!context.mounted) return;
        BloomiToast.show(
          context,
          message: 'Google Health Connect permission is mandatory to finish onboarding.',
          icon: CupertinoIcons.lock_fill,
        );
        final granted = await healthService.requestPermissions();
        if (!granted) {
          if (!context.mounted) return;
          if (widget.onBack != null) {
            widget.onBack!();
          } else {
            context.go('/onboarding/permissions');
          }
          return;
        }
      }
    }

    if (!context.mounted) return;
    setState(() => _isSaving = true);
    final authUser = context.read<AuthBloc>().state.user;
    context.read<OnboardingBloc>().add(
          OnboardingSaveAndCompleteRequested(authUser?.id),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingBloc, OnboardingState>(
      listener: (context, state) async {
        if (state is OnboardingSuccessState) {
          final authBloc = context.read<AuthBloc>();
          authBloc.add(const AuthSetOnboardingCompletedRequested(true));
          try {
            await authBloc.stream
                .firstWhere(
                  (s) => s is AuthAuthenticatedState && (s.user?.hasCompletedOnboarding ?? false),
                )
                .timeout(const Duration(milliseconds: 1500));
          } catch (_) {}
          if (!context.mounted) return;
          setState(() => _isSaving = false);
          context.go('/home');
        } else if (state is OnboardingFailureState) {
          setState(() => _isSaving = false);
          BloomiToast.show(
            context,
            message: 'Error saving your plan. Please try again.',
            icon: CupertinoIcons.exclamationmark_circle,
          );
        }
      },
      builder: (context, state) {
        final profile = state.profile;
        final plan = profile.computedPlan;

        void handleBack() {
          if (widget.onBack != null) {
            widget.onBack!();
          } else {
            context.go('/onboarding/permissions');
          }
        }

        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, _) {
            if (didPop) return;
            handleBack();
          },
          child: Scaffold(
            backgroundColor: context.appBackground,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(CupertinoIcons.arrow_left, color: context.appInk),
                onPressed: handleBack,
              ),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenSide,
                        vertical: AppSpacing.md,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Cheering mascot header
                          Center(
                            child: Column(
                              children: [
                                const FloatingIllustration(
                                  distance: 8,
                                  child: MascotWidget(
                                    state: MascotState.cheer,
                                    size: 130,
                                  ),
                                ),
                                const SizedBox(height: AppSpacing.md),
                                Text(
                                  'Your Plan is Ready!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Baloo 2',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 32,
                                    color: context.appInk,
                                    height: 1.1,
                                  ),
                                ),
                                const SizedBox(height: AppSpacing.xs),
                                Text(
                                  'Tailored for ${profile.name.isNotEmpty ? profile.name : "you"} • ${profile.goal.description.split("(").first.trim()}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: context.appSlate,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: AppSpacing.lg),

                          // 1. Calorie Target Card
                          Card(
                            elevation: 0,
                            color: context.appSurface,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(AppSpacing.md),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(CupertinoIcons.flame_fill, color: AppColors.softOrange),
                                      const SizedBox(width: AppSpacing.sm),
                                      Text(
                                        'Daily Calorie Target',
                                        style: TextStyle(
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: context.appInk,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: AppSpacing.sm),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                                    decoration: const BoxDecoration(
                                      color: AppColors.butter,
                                      borderRadius: BorderRadius.all(Radius.circular(AppSpacing.chipRadius)),
                                    ),
                                    child: Text(
                                      '${plan.macros.calories.toInt()} kcal',
                                      style: TextStyle(
                                        fontFamily: 'Baloo 2',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 22,
                                        color: context.appInk,
                                      ),
                                    ),
                                  ),
                                  Divider(height: 24, color: context.appBorderColor),
                                  MacroBars(
                                    protein: MacroData(
                                      name: 'Protein',
                                      currentGrams: 0,
                                      targetGrams: plan.macros.proteinGrams,
                                      color: AppColors.peach,
                                    ),
                                    carbs: MacroData(
                                      name: 'Carbs',
                                      currentGrams: 0,
                                      targetGrams: plan.macros.carbsGrams,
                                      color: AppColors.sky,
                                    ),
                                    fat: MacroData(
                                      name: 'Fat',
                                      currentGrams: 0,
                                      targetGrams: plan.macros.fatGrams,
                                      color: AppColors.butter,
                                    ),
                                    fibre: MacroData(
                                      name: 'Fibre',
                                      currentGrams: 0,
                                      targetGrams: plan.macros.fibreGrams,
                                      color: AppColors.mint,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: AppSpacing.md),

                          // 2. Hydration & Movement Cards
                          Row(
                            children: [
                              Expanded(
                                child: PastelStatCard(
                                  backgroundColor: AppColors.sky,
                                  icon: CupertinoIcons.drop_fill,
                                  label: 'Water Target',
                                  value: (plan.waterMl / 1000.0).toStringAsFixed(1),
                                  unit: 'L/day',
                                ),
                              ),
                              const SizedBox(width: AppSpacing.sm),
                              const Expanded(
                                child: PastelStatCard(
                                  backgroundColor: AppColors.butter,
                                  icon: CupertinoIcons.compass,
                                  label: 'Daily Steps',
                                  value: '8,000',
                                  unit: 'steps',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSpacing.lg),

                          // 3. Not-Medical-Advice Disclaimer Checkbox
                          Container(
                            padding: const EdgeInsets.all(AppSpacing.md),
                            decoration: BoxDecoration(
                              color: context.appSurface,
                              borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                              border: Border.all(
                                color: profile.isDisclaimerAccepted ? AppColors.mint : AppColors.softOrange,
                                width: 1.5,
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Checkbox(
                                  value: profile.isDisclaimerAccepted,
                                  activeColor: AppColors.mint,
                                  checkColor: context.appInk,
                                  onChanged: (val) {
                                    context.read<OnboardingBloc>().add(
                                          OnboardingDisclaimerAcceptedUpdated(val ?? false),
                                        );
                                  },
                                ),
                                const SizedBox(width: AppSpacing.xs),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      context.read<OnboardingBloc>().add(
                                            OnboardingDisclaimerAcceptedUpdated(
                                                !profile.isDisclaimerAccepted),
                                          );
                                    },
                                    child: Text(
                                      'I understand that Bloomi is a personal wellness companion, NOT a medical device. All calorie, macro, and water targets are estimated for general information. I will consult a doctor for medical guidance.',
                                      style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 13,
                                        color: context.appInk,
                                        height: 1.4,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: AppSpacing.md),
                        ],
                      ),
                    ),
                  ),

                  // Fixed non-scrollable Start My Journey Button
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.screenSide,
                      vertical: AppSpacing.md,
                    ),
                    decoration: BoxDecoration(
                      color: context.appBackground,
                      border: Border(
                        top: BorderSide(
                          color: context.appBorderColor,
                          width: 1,
                        ),
                      ),
                    ),
                    child: PillButton(
                      label: 'Start My Journey',
                      isLoading: _isSaving,
                      fullWidth: true,
                      onPressed: () => _onStartJourney(context, state),
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
