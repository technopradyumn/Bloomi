import 'package:bloomi/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/core/widgets/metric_animations/floating_onboarding_illustration.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class IntroSlidesPage extends StatefulWidget {
  const IntroSlidesPage({super.key, this.onNext, this.onBack});

  final VoidCallback? onNext;
  final VoidCallback? onBack;

  @override
  State<IntroSlidesPage> createState() => _IntroSlidesPageState();
}

class _IntroSlidesPageState extends State<IntroSlidesPage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<_SlideData> _slides = const [
    _SlideData(
      title: 'Real Portions You Understand',
      description:
          'Track your meals in everyday household measures: roti, katori, bowl, glass, or grams. No confusing guesswork.',
      mascotState: MascotState.eating,
      cardColor: AppColors.mint,
      icon: CupertinoIcons.cart_fill,
    ),
    _SlideData(
      title: 'Synced with Your Body & Widgets',
      description:
          'Connect with Google Health Connect to pull real steps, sleep, and heart rate, and sync seamlessly with real data on mobile home widgets.',
      mascotState: MascotState.happy,
      cardColor: AppColors.sky,
      icon: CupertinoIcons.heart_fill,
    ),
    _SlideData(
      title: 'Gentle, Shame-Free Guidance',
      description:
          'No harsh red alarms or restrictive crash diets. Bloomi encourages you every step of the way with a kind daily plan.',
      mascotState: MascotState.cheer,
      cardColor: AppColors.butter,
      icon: CupertinoIcons.sparkles,
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onNext() {
    if (_currentIndex < _slides.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
      );
    } else {
      if (widget.onNext != null) {
        widget.onNext!();
      } else {
        context.go('/onboarding/about-you');
      }
    }
  }

  void _goToLogin() {
    context.read<AuthBloc>().add(const AuthSignOutRequested());
    context.go('/sign-in');
  }

  void _handleBack() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
      );
    } else {
      if (widget.onBack != null) {
        widget.onBack!();
      } else {
        _goToLogin();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
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
          actions: [
            TextButton(
              onPressed: () {
                if (widget.onNext != null) {
                  widget.onNext!();
                } else {
                  context.go('/onboarding/about-you');
                }
              },
              child: Text(
                'Skip',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: context.appSlate,
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _slides.length,
                  onPageChanged: (index) {
                    setState(() => _currentIndex = index);
                  },
                  itemBuilder: (context, index) {
                    final slide = _slides[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenSide,
                        vertical: AppSpacing.md,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingIllustration(
                            distance: 10,
                            child: Container(
                              padding: const EdgeInsets.all(AppSpacing.xl),
                              decoration: BoxDecoration(
                                color: slide.cardColor.withAlpha(context.isDarkMode ? 70 : 50),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: slide.cardColor.withAlpha(60),
                                    blurRadius: 20,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: MascotWidget(
                                state: slide.mascotState,
                                size: 140,
                              ),
                            ),
                          ),
                          const SizedBox(height: AppSpacing.xl),
                          Text(
                            slide.title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Baloo 2',
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              color: context.appInk,
                              height: 1.15,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.md),
                          Text(
                            slide.description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: context.appSlate,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppSpacing.screenSide),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        _slides.length,
                        (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: _currentIndex == index ? 24 : 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: _currentIndex == index
                                ? AppColors.mint
                                : context.appDivider,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSpacing.lg),
                    PillButton(
                      label: _currentIndex == _slides.length - 1
                          ? 'Get Started'
                          : 'Continue',
                      icon: CupertinoIcons.arrow_right,
                      fullWidth: true,
                      height: 54,
                      onPressed: _onNext,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SlideData {
  const _SlideData({
    required this.title,
    required this.description,
    required this.mascotState,
    required this.cardColor,
    required this.icon,
  });

  final String title;
  final String description;
  final MascotState mascotState;
  final Color cardColor;
  final IconData icon;
}
