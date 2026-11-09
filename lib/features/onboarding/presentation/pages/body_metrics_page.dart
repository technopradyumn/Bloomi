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

class BodyMetricsPage extends StatefulWidget {
  final bool isStandalone;
  final VoidCallback? onNext;
  final VoidCallback? onBack;

  const BodyMetricsPage({
    super.key,
    this.isStandalone = false,
    this.onNext,
    this.onBack,
  });

  @override
  State<BodyMetricsPage> createState() => _BodyMetricsPageState();
}

class _BodyMetricsPageState extends State<BodyMetricsPage> {
  late final TextEditingController _heightController;
  late final TextEditingController _weightController;
  late final TextEditingController _targetWeightController;
  bool _isSavingStandalone = false;

  @override
  void initState() {
    super.initState();
    final profile = context.read<OnboardingBloc>().state.profile;
    _heightController = TextEditingController(
      text: profile.heightCm.toInt().toString(),
    );
    _weightController = TextEditingController(
      text: profile.weightKg.toStringAsFixed(1),
    );
    _targetWeightController = TextEditingController(
      text: profile.targetWeightKg.toStringAsFixed(1),
    );
  }

  @override
  void dispose() {
    _heightController.dispose();
    _weightController.dispose();
    _targetWeightController.dispose();
    super.dispose();
  }

  void _handleBack() {
    if (widget.isStandalone) {
      context.pop();
      return;
    }
    if (widget.onBack != null) {
      widget.onBack!();
    } else {
      context.go('/onboarding/about-you');
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
        BloomiToast.show(context, message: 'Body numbers updated successfully! ✨');
        context.pop();
      } catch (e) {
        if (!mounted) return;
        BloomiToast.show(context, message: 'Error updating numbers');
      } finally {
        if (mounted) setState(() => _isSavingStandalone = false);
      }
      return;
    }

    if (widget.onNext != null) {
      widget.onNext!();
    } else {
      context.go('/onboarding/goal');
    }
  }

  /// Called from stepper buttons (+/–) — updates both bloc AND text field.
  void _updateHeightFromStepper(double val) {
    final clamped = val.clamp(100.0, 240.0);
    context.read<OnboardingBloc>().add(OnboardingHeightUpdated(clamped));
    _heightController.text = clamped.toInt().toString();
    _heightController.selection = TextSelection.collapsed(
      offset: _heightController.text.length,
    );
  }

  /// Called from keyboard input — updates only the bloc, never overwrites text.
  void _updateHeightFromKeyboard(String text) {
    final parsed = double.tryParse(text);
    if (parsed != null) {
      final clamped = parsed.clamp(100.0, 240.0);
      context.read<OnboardingBloc>().add(OnboardingHeightUpdated(clamped));
    }
  }

  void _updateWeightFromStepper(double val) {
    final clamped = val.clamp(30.0, 250.0);
    context.read<OnboardingBloc>().add(OnboardingWeightUpdated(clamped));
    _weightController.text = clamped.toStringAsFixed(1);
    _weightController.selection = TextSelection.collapsed(
      offset: _weightController.text.length,
    );
  }

  void _updateWeightFromKeyboard(String text) {
    final parsed = double.tryParse(text);
    if (parsed != null) {
      final clamped = parsed.clamp(30.0, 250.0);
      context.read<OnboardingBloc>().add(OnboardingWeightUpdated(clamped));
    }
  }

  void _updateTargetWeightFromStepper(double val) {
    final clamped = val.clamp(30.0, 250.0);
    context.read<OnboardingBloc>().add(OnboardingTargetWeightUpdated(clamped));
    _targetWeightController.text = clamped.toStringAsFixed(1);
    _targetWeightController.selection = TextSelection.collapsed(
      offset: _targetWeightController.text.length,
    );
  }

  void _updateTargetWeightFromKeyboard(String text) {
    final parsed = double.tryParse(text);
    if (parsed != null) {
      final clamped = parsed.clamp(30.0, 250.0);
      context.read<OnboardingBloc>().add(OnboardingTargetWeightUpdated(clamped));
    }
  }

  String _getBmiCategory(double bmi) {
    if (bmi < 18.5) return 'Underweight · Gentle nourishment suggested';
    if (bmi < 24.9) return 'Healthy Weight · Balanced & thriving';
    if (bmi < 29.9) return 'Overweight · Mindful habit tracking';
    return 'Obese · Compassionate wellness pace';
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        final p = state.profile;
        if (p.heightCm > 0) {
          final hText = p.heightCm.toInt().toString();
          if (_heightController.text.isEmpty || _heightController.text == '165') {
            _heightController.text = hText;
          }
        }
        if (p.weightKg > 0) {
          final wText = p.weightKg.toStringAsFixed(1);
          if (_weightController.text.isEmpty || _weightController.text == '65.0') {
            _weightController.text = wText;
          }
        }
        if (p.targetWeightKg > 0) {
          final twText = p.targetWeightKg.toStringAsFixed(1);
          if (_targetWeightController.text.isEmpty || _targetWeightController.text == '60.0') {
            _targetWeightController.text = twText;
          }
        }
      },
      builder: (context, state) {
        final profile = state.profile;
        final isMetric = profile.isMetric;

        final bmi = HealthCalculators.calculateBMI(
          weightKg: profile.weightKg,
          heightCm: profile.heightCm,
        );

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
              primary: widget.isStandalone,
              toolbarHeight: widget.isStandalone ? kToolbarHeight : 42,
              leading: IconButton(
                icon: Icon(CupertinoIcons.arrow_left, color: context.appInk),
                onPressed: _handleBack,
              ),
              title: widget.isStandalone
                  ? Text(
                      'Body Numbers',
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: context.appInk,
                      ),
                    )
                  : null,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: AppSpacing.sm),
                  child: ChoiceChip(
                    label: Text(
                      isMetric ? 'Metric (cm, kg)' : 'Imperial (ft, lbs)',
                      style: const TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                    selected: true,
                    selectedColor: AppColors.sky,
                    onSelected: (_) {
                      context
                          .read<OnboardingBloc>()
                          .add(OnboardingUnitsUpdated(!isMetric));
                    },
                  ),
                ),
              ],
            ),
            body: SafeArea(
              top: widget.isStandalone,
              child: Column(
                children: [
                  // Scrollable input fields
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenSide,
                        vertical: AppSpacing.xs,
                      ),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 440),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (!widget.isStandalone) ...[
                              Text(
                                'STEP 3 OF 6',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  letterSpacing: 1.2,
                                  color: context.appSlate,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Your body numbers',
                                          style: TextStyle(
                                            fontFamily: 'Baloo 2',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 26,
                                            color: context.appInk,
                                          ),
                                        ),
                                        const SizedBox(height: 2),
                                        Text(
                                          'Type in the box or tap + / – to adjust your numbers easily.',
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
                                  const SizedBox(width: 8),
                                  const FloatingIllustration(
                                    child: HealthMetricAnimation(
                                      metricType: 'weight',
                                      size: 38,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSpacing.sm),
                            ],

                            // 1. Height Card (NO SLIDER)
                            _buildStepperInputCard(
                              title: 'Height',
                              unit: 'cm',
                              controller: _heightController,
                              currentValue: profile.heightCm,
                              step: 1.0,
                              min: 100.0,
                              max: 240.0,
                              color: AppColors.mint,
                              onStepperChanged: _updateHeightFromStepper,
                              onKeyboardChanged: _updateHeightFromKeyboard,
                            ),
                            const SizedBox(height: AppSpacing.md),

                            // 2. Current Weight Card (NO SLIDER)
                            _buildStepperInputCard(
                              title: 'Current Weight',
                              unit: 'kg',
                              controller: _weightController,
                              currentValue: profile.weightKg,
                              step: 0.5,
                              min: 30.0,
                              max: 250.0,
                              color: AppColors.sky,
                              onStepperChanged: _updateWeightFromStepper,
                              onKeyboardChanged: _updateWeightFromKeyboard,
                            ),
                            const SizedBox(height: AppSpacing.md),

                            // 3. Target Weight Card (NO SLIDER)
                            _buildStepperInputCard(
                              title: 'Target Weight',
                              unit: 'kg',
                              controller: _targetWeightController,
                              currentValue: profile.targetWeightKg,
                              step: 0.5,
                              min: 30.0,
                              max: 250.0,
                              color: AppColors.butter,
                              onStepperChanged: _updateTargetWeightFromStepper,
                              onKeyboardChanged: _updateTargetWeightFromKeyboard,
                            ),
                            const SizedBox(height: AppSpacing.md),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // PINNED NON-SCROLLABLE BOTTOM SECTION (BMI Card + Action Button)
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
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Non-scrollable BMI Card directly above button
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.md,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: context.appSurface,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(AppSpacing.cardRadius),
                              ),
                              boxShadow: context.appCardShadow,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: AppColors.lilac,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                  ),
                                  child: Text(
                                    bmi.toStringAsFixed(1),
                                    style: TextStyle(
                                      fontFamily: 'Baloo 2',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: context.appInk,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: AppSpacing.sm),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Estimated Body Mass Index (BMI)',
                                        style: TextStyle(
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color: context.appInk,
                                        ),
                                      ),
                                      Text(
                                        _getBmiCategory(bmi),
                                        style: TextStyle(
                                          fontFamily: 'Nunito',
                                          fontSize: 11,
                                          color: context.appSlate,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: AppSpacing.sm),

                          // Pinned Action Button
                          PillButton(
                            label: widget.isStandalone
                                ? 'Save Changes'
                                : 'Continue to Goals',
                            icon: widget.isStandalone
                                ? CupertinoIcons.checkmark
                                : CupertinoIcons.arrow_right,
                            isLoading: _isSavingStandalone,
                            fullWidth: true,
                            height: 52,
                            onPressed: _handleContinue,
                          ),
                        ],
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

  Widget _buildStepperInputCard({
    required String title,
    required String unit,
    required TextEditingController controller,
    required double currentValue,
    required double step,
    required double min,
    required double max,
    required Color color,
    required ValueChanged<double> onStepperChanged,
    required ValueChanged<String> onKeyboardChanged,
  }) {
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
                title,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: context.appInk,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: color.withAlpha(70),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '${step == 1.0 ? currentValue.toInt() : currentValue.toStringAsFixed(1)} $unit',
                  style: TextStyle(
                    fontFamily: 'Baloo 2',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: context.appInk,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),

          // Stepper + Input Field Row (NO SLIDER)
          Row(
            children: [
              // Minus Button
              IconButton.filledTonal(
                onPressed: () => onStepperChanged((currentValue - step).clamp(min, max)),
                icon: const Icon(CupertinoIcons.minus, size: 22),
                style: IconButton.styleFrom(
                  backgroundColor: context.appBackground,
                  foregroundColor: context.appInk,
                  padding: const EdgeInsets.all(12),
                ),
              ),
              const SizedBox(width: AppSpacing.sm),

              // Number Input Field
              Expanded(
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: context.appBackground,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: color.withAlpha(120), width: 1.5),
                  ),
                  child: Center(
                    child: TextField(
                      controller: controller,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: step < 1.0,
                        signed: false,
                      ),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: context.appInk,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixText: '$unit ',
                        suffixStyle: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: context.appSlate,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                      ),
                      onChanged: onKeyboardChanged,
                      onSubmitted: (text) {
                        // When the user presses Done on the keyboard,
                        // clamp and reformat the displayed value.
                        final parsed = double.tryParse(text);
                        if (parsed != null) {
                          final clamped = parsed.clamp(min, max);
                          final formatted = step == 1.0
                              ? clamped.toInt().toString()
                              : clamped.toStringAsFixed(1);
                          controller.text = formatted;
                          controller.selection = TextSelection.collapsed(
                            offset: formatted.length,
                          );
                        }
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(width: AppSpacing.sm),

              // Plus Button
              IconButton.filledTonal(
                onPressed: () => onStepperChanged((currentValue + step).clamp(min, max)),
                icon: const Icon(CupertinoIcons.add, size: 22),
                style: IconButton.styleFrom(
                  backgroundColor: context.appBackground,
                  foregroundColor: context.appInk,
                  padding: const EdgeInsets.all(12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
