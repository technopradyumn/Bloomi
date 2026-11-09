import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/features/health/presentation/bloc/health_bloc.dart';
import 'package:bloomi/features/health/presentation/pages/devices_watch_page.dart';
import 'package:bloomi/features/health/presentation/pages/health_overview_page.dart';
import 'package:bloomi/features/health/presentation/pages/manual_body_values_page.dart';
import 'package:bloomi/features/health/presentation/pages/metric_detail_page.dart';
import 'package:bloomi/features/health/presentation/pages/sleep_detail_page.dart';
import 'package:bloomi/features/health/presentation/pages/weight_body_page.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/health/presentation/pages/workout_editor_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> healthRoutes = [
  GoRoute(
    path: '/health',
    builder: (context, state) => BlocProvider<HealthBloc>(
      create: (_) => sl<HealthBloc>(),
      child: const HealthOverviewPage(),
    ),
    routes: [
      GoRoute(
        path: 'workout-editor',
        builder: (context, state) {
          final workout = state.extra as WorkoutLog?;
          return WorkoutEditorPage(existingWorkout: workout);
        },
      ),
      GoRoute(
        path: 'metric-detail',
        builder: (context, state) => BlocProvider<HealthBloc>(
          create: (_) => sl<HealthBloc>(),
          child: MetricDetailPage(
            metricType:
                state.uri.queryParameters['type'] ?? 'steps',
          ),
        ),
      ),
      GoRoute(
        path: 'sleep-detail',
        builder: (context, state) => BlocProvider<HealthBloc>(
          create: (_) => sl<HealthBloc>(),
          child: const SleepDetailPage(),
        ),
      ),
      GoRoute(
        path: 'sleep',
        builder: (context, state) => BlocProvider<HealthBloc>(
          create: (_) => sl<HealthBloc>(),
          child: const SleepDetailPage(),
        ),
      ),
      GoRoute(
        path: 'weight-body',
        builder: (context, state) => BlocProvider<HealthBloc>(
          create: (_) => sl<HealthBloc>(),
          child: const WeightBodyPage(),
        ),
      ),
      GoRoute(
        path: 'weight',
        builder: (context, state) => BlocProvider<HealthBloc>(
          create: (_) => sl<HealthBloc>(),
          child: const WeightBodyPage(),
        ),
      ),
      GoRoute(
        path: 'manual-body',
        builder: (context, state) {
          final cat = state.uri.queryParameters['type'] ?? state.uri.queryParameters['category'];
          final existing = state.extra is BodyEntry ? state.extra as BodyEntry : null;
          return BlocProvider<HealthBloc>(
            create: (_) => sl<HealthBloc>(),
            child: ManualBodyValuesPage(
              initialCategory: cat,
              existingEntry: existing,
            ),
          );
        },
      ),
      GoRoute(
        path: 'body-manual',
        redirect: (context, state) {
          final query = state.uri.hasQuery ? '?${state.uri.query}' : '';
          return '/health/manual-body$query';
        },
      ),
      GoRoute(
        path: 'sleep',
        redirect: (context, state) => '/health/sleep-detail',
      ),
      GoRoute(
        path: 'workout',
        redirect: (context, state) => '/workout',
      ),
      GoRoute(
        path: 'devices',
        builder: (context, state) => BlocProvider<HealthBloc>(
          create: (_) => sl<HealthBloc>(),
          child: const DevicesWatchPage(),
        ),
      ),
    ],
  ),
];

