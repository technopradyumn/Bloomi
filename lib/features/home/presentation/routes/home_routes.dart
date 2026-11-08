import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bloomi/features/home/presentation/bloc/home_dashboard_bloc.dart';
import 'package:bloomi/features/home/presentation/pages/home_dashboard_page.dart';
import 'package:bloomi/features/home/presentation/pages/notifications_page.dart';
import 'package:bloomi/features/home/presentation/widgets/quick_add_sheet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> homeRoutes = [
  GoRoute(
    path: '/home',
    builder: (context, state) {
      final user = context.read<AuthBloc>().state.user;
      final userName = user?.displayName.split(' ').first ?? 'Friend';
      return BlocProvider<HomeDashboardBloc>(
        create: (_) => sl<HomeDashboardBloc>()..add(HomeDashboardStarted(userName)),
        child: const HomeDashboardPage(),
      );
    },
    routes: [
      GoRoute(
        path: 'quick-add',
        builder: (context, state) {
          final user = context.read<AuthBloc>().state.user;
          final userName = user?.displayName.split(' ').first ?? 'Friend';
          return BlocProvider<HomeDashboardBloc>(
            create: (_) => sl<HomeDashboardBloc>()..add(HomeDashboardStarted(userName)),
            child: const QuickAddSheet(),
          );
        },
      ),
      GoRoute(
        path: 'notifications',
        builder: (context, state) => const NotificationsPage(),
      ),
    ],
  ),
  GoRoute(
    path: '/notifications',
    builder: (context, state) => const NotificationsPage(),
  ),
];

