import 'dart:async';
import 'package:bloomi/app/shell/app_shell.dart';
import 'package:bloomi/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bloomi/features/auth/presentation/routes/auth_routes.dart';
import 'package:bloomi/features/dev/presentation/routes/dev_routes.dart';
import 'package:bloomi/features/food/presentation/routes/food_routes.dart';
import 'package:bloomi/features/health/presentation/routes/health_routes.dart';
import 'package:bloomi/features/home/presentation/routes/home_routes.dart';
import 'package:bloomi/features/insights/presentation/routes/insights_routes.dart';
import 'package:bloomi/features/onboarding/presentation/routes/onboarding_routes.dart';
import 'package:bloomi/features/plan/presentation/routes/plan_routes.dart';
import 'package:bloomi/features/profile/presentation/routes/profile_routes.dart';
import 'package:bloomi/features/settings/presentation/routes/settings_routes.dart';
import 'package:bloomi/features/splash/presentation/routes/splash_routes.dart';
import 'package:bloomi/features/surroundings/presentation/routes/surroundings_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

class AuthRouterNotifier extends ChangeNotifier {
  late final StreamSubscription<AuthState> _subscription;

  AuthRouterNotifier(AuthBloc authBloc) {
    _subscription = authBloc.stream.listen((_) => notifyListeners());
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

String getInitialRoute(AuthState authState) {
  if (authState is AuthAuthenticatedState && authState.user != null) {
    final user = authState.user!;
    if (user.isUnder18) return '/under-18';
    if (!user.hasCompletedOnboarding) {
      return user.isReinstall
          ? '/onboarding/intro?mode=reinstall'
          : '/onboarding/intro';
    }
    return '/home';
  }
  return '/sign-in';
}

GoRouter createRouter(AuthBloc authBloc) {
  final notifier = AuthRouterNotifier(authBloc);
  final initialRoute = getInitialRoute(authBloc.state);

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: initialRoute,
    refreshListenable: notifier,
    redirect: (context, state) {
      final authState = authBloc.state;
      final loc = state.matchedLocation;

      // Allow dev gallery at all times
      if (loc == '/dev/gallery') return null;

      // Signed out user: open directly to /sign-in
      if (authState is! AuthAuthenticatedState || authState.user == null) {
        final isAuthRoute = loc == '/sign-in' || loc == '/splash';
        if (!isAuthRoute) {
          return '/sign-in';
        }
        return null;
      }

      // Signed in user checks
      final user = authState.user!;

      // 1. Under-18 stop gate
      if (user.isUnder18) {
        return loc == '/under-18' ? null : '/under-18';
      }

      // 2. Incomplete onboarding -> Guide to onboarding flow
      if (!user.hasCompletedOnboarding) {
        final isOnboardingOrRestore = loc.startsWith('/onboarding') ||
            loc == '/restoring' ||
            loc == '/under-18';
        if (!isOnboardingOrRestore) {
          return user.isReinstall
              ? '/onboarding/intro?mode=reinstall'
              : '/onboarding/intro';
        }
        return null;
      }

      // 3. Authenticated & Onboarding complete -> Prevent staying or going back to sign-in/splash/onboarding
      if (loc == '/sign-in' ||
          loc == '/splash' ||
          loc == '/under-18' ||
          loc.startsWith('/onboarding') ||
          loc == '/restoring') {
        return '/home';
      }

      return null;
    },
    routes: [
      // Top-level standalone routes
      ...devRoutes,
      ...splashRoutes,
      ...authRoutes,
      ...onboardingRoutes,

      // 5-Tab Shell Navigation
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return AppShell(navigationShell: navigationShell);
        },
        branches: [
          // Tab 1: Home
          StatefulShellBranch(routes: homeRoutes),

          // Tab 2: Food
          StatefulShellBranch(routes: foodRoutes),

          // Tab 3: Health & Surroundings
          StatefulShellBranch(
            routes: [
              ...healthRoutes,
              ...surroundingsRoutes,
            ],
          ),

          // Tab 4: Plan & Insights
          StatefulShellBranch(
            routes: [
              ...planRoutes,
              ...insightsRoutes,
            ],
          ),

          // Tab 5: Me (Profile & Settings)
          StatefulShellBranch(
            routes: [
              ...profileRoutes,
              ...settingsRoutes,
            ],
          ),
        ],
      ),
    ],
  );
}
