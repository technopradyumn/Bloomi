import 'package:bloomi/features/onboarding/presentation/pages/onboarding_flow_page.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> onboardingRoutes = [
  GoRoute(
    path: '/onboarding',
    builder: (context, state) => OnboardingFlowPage(
      initialStep: 0,
      isReinstall: state.uri.queryParameters['mode'] == 'reinstall',
    ),
  ),
  GoRoute(
    path: '/onboarding/intro',
    builder: (context, state) => OnboardingFlowPage(
      initialStep: 0,
      isReinstall: state.uri.queryParameters['mode'] == 'reinstall',
    ),
  ),
  GoRoute(
    path: '/onboarding/about-you',
    builder: (context, state) => const OnboardingFlowPage(initialStep: 1),
  ),
  GoRoute(
    path: '/onboarding/body',
    builder: (context, state) => const OnboardingFlowPage(initialStep: 2),
  ),
  GoRoute(
    path: '/onboarding/goal',
    builder: (context, state) => const OnboardingFlowPage(initialStep: 3),
  ),
  GoRoute(
    path: '/onboarding/lifestyle',
    builder: (context, state) => const OnboardingFlowPage(initialStep: 4),
  ),
  GoRoute(
    path: '/onboarding/permissions',
    builder: (context, state) => const OnboardingFlowPage(initialStep: 5),
  ),
  GoRoute(
    path: '/onboarding/plan-ready',
    builder: (context, state) => const OnboardingFlowPage(initialStep: 6),
  ),
];
