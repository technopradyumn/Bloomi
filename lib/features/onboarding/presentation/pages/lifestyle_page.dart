import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/utils/health_calculators.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/chip_selector.dart';
import 'package:bloomi/core/widgets/metric_animations/floating_onboarding_illustration.dart';
import 'package:bloomi/core/widgets/metric_animations/health_metric_animations.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/onboarding/data/local/onboarding_local_data_source.dart';
import 'package:bloomi/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LifestylePage extends StatefulWidget {
  final bool isStandalone;
  final VoidCallback? onNext;
  final VoidCallback? onBack;

  const LifestylePage({
    super.key,
    this.isStandalone = false,
    this.onNext,
    this.onBack,
  });

  @override
  State<LifestylePage> createState() => _LifestylePageState();
}

class _LifestylePageState extends State<LifestylePage> {
  bool _isSavingStandalone = false;

  void _handleBack() {
    if (widget.isStandalone) {
      context.pop();
      return;
    }
    if (widget.onBack != null) {
      widget.onBack!();
    } else {
      context.go('/onboarding/goal');
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
        BloomiToast.show(context, message: 'Lifestyle & diet updated! ✨');
        context.pop();
      } catch (e) {
        if (!mounted) return;
        BloomiToast.show(context, message: 'Error updating lifestyle');
      } finally {
        if (mounted) setState(() => _isSavingStandalone = false);
      }
      return;
    }

    if (widget.onNext != null) {
      widget.onNext!();
    } else {
      context.go('/onboarding/permissions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        final profile = state.profile;

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
                icon: Icon(Icons.arrow_back_rounded, color: context.appInk),
                onPressed: _handleBack,
              ),
              title: widget.isStandalone
                  ? Text(
                      'Lifestyle & Food Habits',
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
                                        color: AppColors.peach.withAlpha(context.isDarkMode ? 60 : 40),
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.peach.withAlpha(50),
                                            blurRadius: 16,
                                          ),
                                        ],
                                      ),
                                      child: const HealthMetricAnimation(
                                        metricType: 'vegetarian',
                                        size: 48,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'STEP 4 OF 5',
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
                                'Lifestyle and food habits',
                                style: TextStyle(
                                  fontFamily: 'Baloo 2',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 28,
                                  color: context.appInk,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                'We filter your food selections and calorie expenditure to align with your lifestyle.',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: context.appSlate,
                                ),
                              ),
                              const SizedBox(height: AppSpacing.lg),
                            ],

                            // 1. Daily Activity Level
                            Text(
                              'Daily Activity Level',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: context.appInk,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.xs),
                            ...ActivityLevel.values.map((lvl) {
                              final isSelected = profile.activityLevel == lvl;
                              return Padding(
                                padding:
                                    const EdgeInsets.only(bottom: AppSpacing.xs),
                                child: Material(
                                  color: isSelected
                                      ? AppColors.butter.withAlpha(140)
                                      : context.appSurface,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(AppSpacing.cardRadius),
                                    ),
                                    side: BorderSide(
                                      color: isSelected
                                          ? AppColors.butter
                                          : Colors.transparent,
                                      width: 1.5,
                                    ),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      context.read<OnboardingBloc>().add(
                                            OnboardingActivityUpdated(lvl),
                                          );
                                    },
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(AppSpacing.cardRadius),
                                    ),
                                    splashColor: AppColors.butter.withAlpha(80),
                                    highlightColor: AppColors.butter.withAlpha(40),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 12,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            isSelected
                                                ? Icons.check_circle_rounded
                                                : Icons.radio_button_unchecked_rounded,
                                            color: isSelected
                                                ? context.appInk
                                                : context.appSlate,
                                          ),
                                          const SizedBox(width: AppSpacing.sm),
                                          Expanded(
                                            child: Text(
                                              lvl.description,
                                              style: TextStyle(
                                                fontFamily: 'Nunito',
                                                fontWeight: isSelected
                                                    ? FontWeight.w700
                                                    : FontWeight.w600,
                                                fontSize: 14,
                                                color: context.appInk,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                            const SizedBox(height: AppSpacing.lg),

                            // 2. Dietary Preference (Strictly enforces food exclusions)
                            Text(
                              'Dietary Preference',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: context.appInk,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.xs),
                            Text(
                              'Selecting Vegetarian or Vegan permanently filters out all non-vegetarian dishes from food search and meal suggestions.',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 12,
                                color: context.appSlate,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.sm),
                            ChipSelector<String>.single(
                              items: const [
                                BloomiChipItem(
                                  value: 'Vegetarian',
                                  label: '🌱 Vegetarian',
                                ),
                                BloomiChipItem(
                                  value: 'Vegan',
                                  label: '🌿 Vegan',
                                ),
                                BloomiChipItem(
                                  value: 'Jain',
                                  label: '✨ Jain',
                                ),
                                BloomiChipItem(
                                  value: 'Eggetarian',
                                  label: '🍳 Eggetarian',
                                ),
                                BloomiChipItem(
                                  value: 'Non-Vegetarian',
                                  label: '🍗 Non-Vegetarian',
                                ),
                              ],
                              selectedItem: profile.dietType,
                              selectedColor: AppColors.mint,
                              onChanged: (diet) {
                                context.read<OnboardingBloc>().add(
                                      OnboardingDietTypeUpdated(diet),
                                    );
                              },
                            ),
                            const SizedBox(height: AppSpacing.lg),

                            // 3. Allergies & Dislikes
                            Text(
                              'Allergies or Dislikes',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: context.appInk,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.xs),
                            Text(
                              'Dishes with these ingredients will be excluded from your search results.',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 12,
                                color: context.appSlate,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.sm),
                            ChipSelector<String>.multi(
                              items: const [
                                BloomiChipItem(
                                  value: 'Dairy',
                                  label: '🥛 Dairy / Lactose',
                                ),
                                BloomiChipItem(
                                  value: 'Gluten',
                                  label: '🌾 Gluten / Wheat',
                                ),
                                BloomiChipItem(
                                  value: 'Nuts',
                                  label: '🥜 Peanuts & Nuts',
                                ),
                                BloomiChipItem(
                                  value: 'Soy',
                                  label: '🌱 Soy',
                                ),
                                BloomiChipItem(
                                  value: 'Seafood',
                                  label: '🦐 Fish & Seafood',
                                ),
                                BloomiChipItem(
                                  value: 'Eggs',
                                  label: '🥚 Eggs',
                                ),
                              ],
                              selectedItems: profile.allergies,
                              selectedColor: AppColors.peach,
                              onMultiChanged: (allergies) {
                                context.read<OnboardingBloc>().add(
                                      OnboardingAllergiesUpdated(allergies),
                                    );
                              },
                            ),
                            const SizedBox(height: AppSpacing.xl),
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
                            : 'Continue to Permissions',
                        icon: widget.isStandalone
                            ? Icons.check_rounded
                            : Icons.arrow_forward_rounded,
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
