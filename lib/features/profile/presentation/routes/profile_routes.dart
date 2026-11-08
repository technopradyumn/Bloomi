import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:bloomi/features/onboarding/presentation/pages/about_you_page.dart';
import 'package:bloomi/features/onboarding/presentation/pages/body_metrics_page.dart';
import 'package:bloomi/features/onboarding/presentation/pages/goal_selection_page.dart';
import 'package:bloomi/features/onboarding/presentation/pages/lifestyle_page.dart';
import 'package:bloomi/features/onboarding/presentation/pages/permissions_page.dart';
import 'package:bloomi/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:bloomi/features/profile/presentation/pages/edit_profile_page.dart';
import 'package:bloomi/features/profile/presentation/pages/profile_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> profileRoutes = [
  GoRoute(
    path: '/me',
    builder: (context, state) => BlocProvider<ProfileBloc>(
      create: (_) => sl<ProfileBloc>(),
      child: const ProfilePage(),
    ),
    routes: [
      GoRoute(
        path: 'edit',
        builder: (context, state) => BlocProvider<ProfileBloc>(
          create: (_) => sl<ProfileBloc>(),
          child: const EditProfilePage(),
        ),
      ),
    ],
  ),
  GoRoute(
    path: '/profile/edit',
    builder: (context, state) => BlocProvider<ProfileBloc>(
      create: (_) => sl<ProfileBloc>(),
      child: const EditProfilePage(),
    ),
  ),
  GoRoute(
    path: '/profile/health-settings',
    builder: (context, state) => BlocProvider<ProfileBloc>(
      create: (_) => sl<ProfileBloc>(),
      child: const EditProfilePage(),
    ),
  ),
  GoRoute(
    path: '/profile/edit-about-you',
    builder: (context, state) => BlocProvider<OnboardingBloc>(
      create: (_) {
        final bloc = sl<OnboardingBloc>();
        bloc.add(const OnboardingLoadExistingRequested());
        return bloc;
      },
      child: const AboutYouPage(isStandalone: true),
    ),
  ),
  GoRoute(
    path: '/profile/edit-body',
    builder: (context, state) => BlocProvider<OnboardingBloc>(
      create: (_) {
        final bloc = sl<OnboardingBloc>();
        bloc.add(const OnboardingLoadExistingRequested());
        return bloc;
      },
      child: const BodyMetricsPage(isStandalone: true),
    ),
  ),
  GoRoute(
    path: '/profile/edit-goal',
    builder: (context, state) => BlocProvider<OnboardingBloc>(
      create: (_) {
        final bloc = sl<OnboardingBloc>();
        bloc.add(const OnboardingLoadExistingRequested());
        return bloc;
      },
      child: const GoalSelectionPage(isStandalone: true),
    ),
  ),
  GoRoute(
    path: '/profile/edit-lifestyle',
    builder: (context, state) => BlocProvider<OnboardingBloc>(
      create: (_) {
        final bloc = sl<OnboardingBloc>();
        bloc.add(const OnboardingLoadExistingRequested());
        return bloc;
      },
      child: const LifestylePage(isStandalone: true),
    ),
  ),
  GoRoute(
    path: '/profile/edit-permissions',
    builder: (context, state) => BlocProvider<OnboardingBloc>(
      create: (_) {
        final bloc = sl<OnboardingBloc>();
        bloc.add(const OnboardingLoadExistingRequested());
        return bloc;
      },
      child: const PermissionsPage(isStandalone: true),
    ),
  ),
];
