import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/features/onboarding/presentation/pages/permissions_page.dart';
import 'package:bloomi/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:bloomi/features/settings/presentation/pages/about_help_page.dart';
import 'package:bloomi/features/settings/presentation/pages/language_page.dart';
import 'package:bloomi/features/settings/presentation/pages/premium_paywall_page.dart';
import 'package:bloomi/features/settings/presentation/pages/privacy_policy_page.dart';
import 'package:bloomi/features/settings/presentation/pages/reminders_settings_page.dart';
import 'package:bloomi/features/settings/presentation/pages/settings_page.dart';
import 'package:bloomi/features/settings/presentation/pages/terms_conditions_page.dart';
import 'package:bloomi/features/settings/presentation/pages/theme_settings_page.dart';
import 'package:bloomi/features/settings/presentation/pages/units_page.dart';
import 'package:bloomi/features/settings/presentation/pages/wear_os_page.dart';
import 'package:bloomi/features/settings/presentation/pages/widgets_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> settingsRoutes = [
  GoRoute(
    path: '/settings',
    builder: (context, state) => BlocProvider<SettingsBloc>(
      create: (_) => sl<SettingsBloc>(),
      child: const SettingsPage(),
    ),
    routes: [
      GoRoute(
        path: 'reminders',
        builder: (context, state) => BlocProvider<SettingsBloc>(
          create: (_) => sl<SettingsBloc>(),
          child: const RemindersSettingsPage(),
        ),
      ),
      GoRoute(
        path: 'permissions',
        builder: (context, state) => const PermissionsPage(isStandalone: true),
      ),
      GoRoute(
        path: 'units',
        builder: (context, state) => BlocProvider<SettingsBloc>(
          create: (_) => sl<SettingsBloc>(),
          child: const UnitsPage(),
        ),
      ),
      GoRoute(
        path: 'language',
        builder: (context, state) => BlocProvider<SettingsBloc>(
          create: (_) => sl<SettingsBloc>(),
          child: const LanguagePage(),
        ),
      ),
      GoRoute(
        path: 'units-language',
        builder: (context, state) => BlocProvider<SettingsBloc>(
          create: (_) => sl<SettingsBloc>(),
          child: const UnitsPage(),
        ),
      ),
      GoRoute(
        path: 'privacy',
        builder: (context, state) => const PrivacyPolicyPage(),
      ),
      GoRoute(
        path: 'privacy-policy',
        builder: (context, state) => const PrivacyPolicyPage(),
      ),
      GoRoute(
        path: 'terms',
        builder: (context, state) => const TermsConditionsPage(),
      ),
      GoRoute(
        path: 'about',
        builder: (context, state) => const AboutHelpPage(),
      ),
      GoRoute(
        path: 'premium',
        builder: (context, state) => BlocProvider<SettingsBloc>(
          create: (_) => sl<SettingsBloc>(),
          child: const PremiumPaywallPage(),
        ),
      ),
      GoRoute(
        path: 'widgets',
        builder: (context, state) => BlocProvider<SettingsBloc>(
          create: (_) => sl<SettingsBloc>(),
          child: const WidgetsPage(),
        ),
      ),
      GoRoute(
        path: 'theme',
        builder: (context, state) => const ThemeSettingsPage(),
      ),
      GoRoute(
        path: 'wear-os',
        builder: (context, state) => BlocProvider<SettingsBloc>(
          create: (_) => sl<SettingsBloc>(),
          child: const WearOsPage(),
        ),
      ),
    ],
  ),
];
