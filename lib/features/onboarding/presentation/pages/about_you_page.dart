import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/utils/health_calculators.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/chip_selector.dart';
import 'package:bloomi/core/widgets/metric_animations/floating_onboarding_illustration.dart';
import 'package:bloomi/core/widgets/metric_animations/health_metric_animations.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/auth/domain/repositories/auth_repository.dart';
import 'package:bloomi/features/onboarding/data/local/onboarding_local_data_source.dart';
import 'package:bloomi/features/onboarding/domain/entities/onboarding_profile_entity.dart';
import 'package:bloomi/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AboutYouPage extends StatefulWidget {
  final bool isStandalone;
  final VoidCallback? onNext;
  final VoidCallback? onBack;

  const AboutYouPage({
    super.key,
    this.isStandalone = false,
    this.onNext,
    this.onBack,
  });

  @override
  State<AboutYouPage> createState() => _AboutYouPageState();
}

class _AboutYouPageState extends State<AboutYouPage> {
  late final TextEditingController _nameController;
  DateTime? _selectedDob;
  bool _isSavingStandalone = false;

  @override
  void initState() {
    super.initState();
    final profile = context.read<OnboardingBloc>().state.profile;
    String initialName = profile.name;
    if (initialName.isEmpty || initialName == 'Friend') {
      try {
        final cachedUser = sl<AuthRepository>().getCachedUserSync();
        if (cachedUser?.displayName != null && cachedUser!.displayName.isNotEmpty) {
          initialName = cachedUser.displayName;
        }
      } catch (_) {}
    }
    _nameController = TextEditingController(text: initialName);
    _selectedDob = profile.birthDate;
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _pickDateOfBirth() async {
    final now = DateTime.now();
    final minDate = DateTime(now.year - 100, 1, 1);
    final maxDate = DateTime(now.year - 18, now.month, now.day);
    final initial = _selectedDob ?? DateTime(now.year - 25, 1, 1);

    final picked = await showDatePicker(
      context: context,
      initialDate: initial.isBefore(maxDate) ? initial : maxDate,
      firstDate: minDate,
      lastDate: now,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: AppColors.mint,
              onPrimary: Theme.of(context).colorScheme.onPrimary,
              surface: context.appSurface,
              onSurface: context.appInk,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      final age = HealthCalculators.calculateAge(picked, now);
      if (age < 18) {
        if (!mounted) return;
        await BloomiDialog.show<void>(
          context,
          title: 'Age Requirement',
          content:
              'Bloomi is designed specifically for adults aged 18 and older to ensure safe and healthy nutrition targets.',
          confirmLabel: 'I Understand',
        );
        return;
      }

      setState(() => _selectedDob = picked);
      if (mounted) {
        context.read<OnboardingBloc>().add(OnboardingBirthDateUpdated(picked));
      }
    }
  }

  Future<void> _handleContinue(OnboardingProfileEntity profile) async {
    final name = _nameController.text.trim();
    if (name.isEmpty) {
      BloomiToast.show(context, message: 'Please enter your name');
      return;
    }
    context.read<OnboardingBloc>().add(OnboardingNameUpdated(name));

    if (widget.isStandalone) {
      setState(() => _isSavingStandalone = true);
      try {
        final updatedProfile = profile.copyWith(
          name: name,
          birthDate: _selectedDob,
        );
        await sl<OnboardingLocalDataSource>().saveProfileAndTargets(
          profile: updatedProfile,
        );
        if (!mounted) return;
        BloomiToast.show(context, message: 'Profile updated successfully! ✨');
        context.pop();
      } catch (e) {
        if (!mounted) return;
        BloomiToast.show(context, message: 'Error updating profile');
      } finally {
        if (mounted) setState(() => _isSavingStandalone = false);
      }
      return;
    }

    if (widget.onNext != null) {
      widget.onNext!();
    } else {
      context.go('/onboarding/body');
    }
  }

  void _handleBack() {
    if (widget.isStandalone) {
      context.pop();
      return;
    }
    if (widget.onBack != null) {
      widget.onBack!();
    } else {
      context.go('/onboarding/intro');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        final p = state.profile;
        if (p.name.isNotEmpty && (_nameController.text.isEmpty || _nameController.text == 'Friend')) {
          _nameController.text = p.name;
        }
        if (p.birthDate != null && _selectedDob == null) {
          setState(() => _selectedDob = p.birthDate);
        }
      },
      builder: (context, state) {
        final onboardingProfile = state.profile;
        final formattedDob = _selectedDob != null
            ? '${_selectedDob!.day.toString().padLeft(2, '0')}/${_selectedDob!.month.toString().padLeft(2, '0')}/${_selectedDob!.year}'
            : 'Tap to select date';
        final ageText = _selectedDob != null
            ? ' (${HealthCalculators.calculateAge(_selectedDob!)} years old)'
            : '';

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
                      'About You',
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
                              Text(
                                'STEP 1 OF 5',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  letterSpacing: 1.2,
                                  color: context.appSlate,
                                ),
                              ),
                              const SizedBox(height: AppSpacing.xs),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'About You',
                                    style: TextStyle(
                                      fontFamily: 'Baloo 2',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 30,
                                      color: context.appInk,
                                    ),
                                  ),
                                  const FloatingIllustration(
                                    child: HealthMetricAnimation(metricType: 'veg', size: 36),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSpacing.xs),
                              Text(
                                'This helps Bloomi personalize your baseline caloric and water calculations.',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: context.appSlate,
                                ),
                              ),
                              const SizedBox(height: AppSpacing.lg),
                            ],

                            // 1. Name input
                            Text(
                              'What should we call you?',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: context.appInk,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.sm),
                            TextField(
                              controller: _nameController,
                              textCapitalization: TextCapitalization.words,
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: context.appInk,
                              ),
                              decoration: InputDecoration(
                                hintText: 'e.g. Priya, Alex',
                                hintStyle: TextStyle(color: context.appSlate),
                                prefixIcon: Icon(
                                  Icons.person_outline_rounded,
                                  color: context.appSlate,
                                ),
                                filled: true,
                                fillColor: context.appSurface,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(AppSpacing.cardRadius),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(AppSpacing.cardRadius),
                                  borderSide: BorderSide(
                                    color: context.appBorderColor,
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(AppSpacing.cardRadius),
                                  borderSide: const BorderSide(
                                    color: AppColors.mint,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: AppSpacing.lg),

                            // 2. Gender selector
                            Text(
                              'Biological sex (for metabolic formula)',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: context.appInk,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.xs),
                            Text(
                              'Used for the Mifflin-St Jeor BMR equation to calculate basal calorie burn.',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 12,
                                color: context.appSlate,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.sm),
                            ChipSelector<String>.single(
                              items: const [
                                BloomiChipItem(value: 'Female', label: 'Female'),
                                BloomiChipItem(value: 'Male', label: 'Male'),
                                BloomiChipItem(value: 'Other', label: 'Other'),
                              ],
                              selectedItem: onboardingProfile.gender == Gender.female
                                  ? 'Female'
                                  : onboardingProfile.gender == Gender.male
                                      ? 'Male'
                                      : 'Other',
                              onChanged: (String selected) {
                                Gender g = Gender.other;
                                if (selected == 'Female') g = Gender.female;
                                if (selected == 'Male') g = Gender.male;
                                context
                                    .read<OnboardingBloc>()
                                    .add(OnboardingGenderUpdated(g));
                              },
                            ),
                            const SizedBox(height: AppSpacing.lg),

                            // 3. Date of birth
                            Text(
                              'Date of birth',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: context.appInk,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.sm),
                            Material(
                              color: context.appSurface,
                              borderRadius:
                                  BorderRadius.circular(AppSpacing.cardRadius),
                              child: InkWell(
                                onTap: _pickDateOfBirth,
                                borderRadius:
                                    BorderRadius.circular(AppSpacing.cardRadius),
                                splashColor: AppColors.mint.withAlpha(50),
                                highlightColor: AppColors.mint.withAlpha(25),
                                child: Container(
                                  padding: const EdgeInsets.all(AppSpacing.md),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(AppSpacing.cardRadius),
                                    border: Border.all(
                                      color: context.appBorderColor,
                                      width: 1,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_today_rounded,
                                        color: AppColors.mint,
                                        size: 22,
                                      ),
                                      const SizedBox(width: AppSpacing.md),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              formattedDob,
                                              style: TextStyle(
                                                fontFamily: 'Nunito',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15,
                                                color: context.appInk,
                                              ),
                                            ),
                                            if (ageText.isNotEmpty)
                                              Text(
                                                ageText,
                                                style: TextStyle(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 12,
                                                  color: context.appSlate,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down_rounded,
                                        color: context.appSlate,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
                            : 'Continue to Body Numbers',
                        icon: widget.isStandalone
                            ? Icons.check_rounded
                            : Icons.arrow_forward_rounded,
                        isLoading: _isSavingStandalone,
                        fullWidth: true,
                        height: 52,
                        onPressed: () => _handleContinue(onboardingProfile),
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
