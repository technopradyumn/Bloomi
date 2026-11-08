import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/features/health/presentation/bloc/health_bloc.dart';
import 'package:bloomi/features/health/presentation/pages/devices_watch_page.dart';
import 'package:bloomi/features/health/presentation/pages/health_overview_page.dart';
import 'package:bloomi/features/health/presentation/pages/manual_body_values_page.dart';
import 'package:bloomi/features/health/presentation/pages/metric_detail_page.dart';
import 'package:bloomi/features/health/presentation/pages/sleep_detail_page.dart';
import 'package:bloomi/features/health/presentation/pages/weight_body_page.dart';
import 'package:bloomi/features/health/presentation/pages/workout_log_page.dart';
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
        builder: (context, state) => BlocProvider<HealthBloc>(
          create: (_) => sl<HealthBloc>(),
          child: const ManualBodyValuesPage(),
        ),
      ),
      GoRoute(
        path: 'workout',
        builder: (context, state) => BlocProvider<HealthBloc>(
          create: (_) => sl<HealthBloc>(),
          child: const WorkoutLogPage(),
        ),
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

