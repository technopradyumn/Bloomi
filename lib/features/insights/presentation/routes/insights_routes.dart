import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/features/insights/presentation/bloc/insights_bloc.dart';
import 'package:bloomi/features/insights/presentation/pages/streaks_badges_page.dart';
import 'package:bloomi/features/insights/presentation/pages/weekly_report_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> insightsRoutes = [
  GoRoute(
    path: '/insights/weekly-report',
    builder: (context, state) => BlocProvider<InsightsBloc>(
      create: (_) => sl<InsightsBloc>(),
      child: const WeeklyReportPage(),
    ),
  ),
  GoRoute(
    path: '/insights/streaks-badges',
    builder: (context, state) => BlocProvider<InsightsBloc>(
      create: (_) => sl<InsightsBloc>(),
      child: const StreaksBadgesPage(),
    ),
  ),
  GoRoute(
    path: '/insights/streaks',
    builder: (context, state) => BlocProvider<InsightsBloc>(
      create: (_) => sl<InsightsBloc>(),
      child: const StreaksBadgesPage(),
    ),
  ),
  GoRoute(
    path: '/insights/milestones',
    builder: (context, state) => BlocProvider<InsightsBloc>(
      create: (_) => sl<InsightsBloc>(),
      child: const StreaksBadgesPage(),
    ),
  ),
];

