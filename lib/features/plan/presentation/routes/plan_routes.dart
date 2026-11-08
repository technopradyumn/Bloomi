import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/features/plan/domain/entities/meal_suggestion_entity.dart';
import 'package:bloomi/features/plan/presentation/bloc/plan_bloc.dart';
import 'package:bloomi/features/plan/presentation/pages/daily_plan_page.dart';
import 'package:bloomi/features/plan/presentation/pages/goals_targets_page.dart';
import 'package:bloomi/features/plan/presentation/pages/meal_suggestion_detail_page.dart';
import 'package:bloomi/features/plan/presentation/pages/weekly_plan_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> planRoutes = [
  GoRoute(
    path: '/plan',
    builder: (context, state) => BlocProvider<PlanBloc>(
      create: (_) => sl<PlanBloc>(),
      child: const DailyPlanPage(),
    ),
    routes: [
      GoRoute(
        path: 'suggestion-detail',
        builder: (context, state) => MealSuggestionDetailPage(
          suggestion: state.extra as MealSuggestionEntity?,
        ),
      ),
      GoRoute(
        path: 'weekly-plan',
        builder: (context, state) => BlocProvider<PlanBloc>(
          create: (_) => sl<PlanBloc>(),
          child: const WeeklyPlanPage(),
        ),
      ),
      GoRoute(
        path: 'goals',
        builder: (context, state) => BlocProvider<PlanBloc>(
          create: (_) => sl<PlanBloc>(),
          child: const GoalsTargetsPage(),
        ),
      ),
      GoRoute(
        path: 'goals-targets',
        builder: (context, state) => BlocProvider<PlanBloc>(
          create: (_) => sl<PlanBloc>(),
          child: const GoalsTargetsPage(),
        ),
      ),
    ],
  ),
];

