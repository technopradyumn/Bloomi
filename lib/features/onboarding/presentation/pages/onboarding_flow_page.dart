import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/widgets/metric_animations/floating_onboarding_illustration.dart';
import 'package:bloomi/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bloomi/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:bloomi/features/onboarding/presentation/pages/about_you_page.dart';
import 'package:bloomi/features/onboarding/presentation/pages/body_metrics_page.dart';
import 'package:bloomi/features/onboarding/presentation/pages/goal_selection_page.dart';
import 'package:bloomi/features/onboarding/presentation/pages/intro_slides_page.dart';
import 'package:bloomi/features/onboarding/presentation/pages/lifestyle_page.dart';
import 'package:bloomi/features/onboarding/presentation/pages/onboarding_language_page.dart';
import 'package:bloomi/features/onboarding/presentation/pages/permissions_page.dart';
import 'package:bloomi/features/onboarding/presentation/pages/plan_ready_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OnboardingFlowPage extends StatefulWidget {
  const OnboardingFlowPage({
    super.key,
    this.initialStep = 0,
    this.isReinstall = false,
  });

  final int initialStep;
  final bool isReinstall;

  @override
  State<OnboardingFlowPage> createState() => _OnboardingFlowPageState();
}

class _OnboardingFlowPageState extends State<OnboardingFlowPage> {
  late final PageController _pageController;
  late int _currentIndex;

  int get _maxPageCount => widget.isReinstall ? 3 : 8;

  @override
  void initState() {
    super.initState();
    final maxIdx = _maxPageCount - 1;
    _currentIndex = widget.initialStep.clamp(0, maxIdx);
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToPage(int page) {
    if (page >= 0 && page < _maxPageCount) {
      _pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 320),
        curve: Curves.easeInOut,
      );
    }
  }

  void _next() {
    if (widget.isReinstall) {
      if (_currentIndex == 0) {
        _goToPage(1);
        return;
      } else if (_currentIndex == 1) {
        _goToPage(2);
        return;
      } else {
        context.read<AuthBloc>().add(const AuthSetOnboardingCompletedRequested(true));
        context.go('/home');
        return;
      }
    }

    if (_currentIndex < _maxPageCount - 1) {
      _goToPage(_currentIndex + 1);
    }
  }

  void _back() {
    if (widget.isReinstall) {
      if (_currentIndex > 0) {
        _goToPage(_currentIndex - 1);
        return;
      } else {
        context.read<AuthBloc>().add(const AuthSignOutRequested());
        context.go('/sign-in');
        return;
      }
    }

    if (_currentIndex > 0) {
      _goToPage(_currentIndex - 1);
    } else {
      context.read<AuthBloc>().add(const AuthSignOutRequested());
      context.go('/sign-in');
    }
  }

  @override
  Widget build(BuildContext context) {
    final authUser = context.watch<AuthBloc>().state.user;

    return BlocProvider<OnboardingBloc>(
      create: (_) {
        final bloc = sl<OnboardingBloc>();
        bloc.add(OnboardingInitialized(authUser?.displayName));
        if (authUser?.id != null) {
          bloc.add(OnboardingLoadExistingRequested(authUser!.id));
        }
        return bloc;
      },
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, _) {
          if (didPop) return;
          _back();
        },
        child: Scaffold(
          backgroundColor: context.appBackground,
          body: Column(
            children: [
              SafeArea(
                bottom: false,
                child: OnboardingStepIndicator(
                  currentStep: _currentIndex,
                  totalSteps: _maxPageCount,
                ),
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  // Prevent accidental swiping across steps; user advances with explicit buttons
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() => _currentIndex = index);
                  },
                  children: widget.isReinstall
                ? [
                    // 0: Intro Slides
                    IntroSlidesPage(
                      onNext: _next,
                      onBack: _back,
                    ),

                    // 1: App Language Choose
                    OnboardingLanguagePage(
                      onNext: _next,
                      onBack: _back,
                    ),

                    // 2: Permissions & Health Connect
                    PermissionsPage(
                      onNext: _next,
                      onBack: _back,
                    ),
                  ]
                : [
                    // 0: Intro Slides
                    IntroSlidesPage(
                      onNext: _next,
                      onBack: _back,
                    ),

                    // 1: App Language Choose
                    OnboardingLanguagePage(
                      onNext: _next,
                      onBack: _back,
                    ),

                    // 2: About You
                    AboutYouPage(
                      onNext: _next,
                      onBack: _back,
                    ),

                    // 3: Body Metrics
                    BodyMetricsPage(
                      onNext: _next,
                      onBack: _back,
                    ),

                    // 4: Goal Selection
                    GoalSelectionPage(
                      onNext: _next,
                      onBack: _back,
                    ),

                    // 5: Lifestyle & Food Habits
                    LifestylePage(
                      onNext: _next,
                      onBack: _back,
                    ),

                    // 6: Permissions & Health Connect
                    PermissionsPage(
                      onNext: _next,
                      onBack: _back,
                    ),

                    // 7: Plan Ready
                    PlanReadyPage(
                      onBack: _back,
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
