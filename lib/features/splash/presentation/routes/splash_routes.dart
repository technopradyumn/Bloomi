import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:bloomi/features/splash/presentation/pages/splash_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> splashRoutes = [
  GoRoute(
    path: '/splash',
    builder: (context, state) => BlocProvider<SplashBloc>(
      create: (_) => sl<SplashBloc>(),
      child: const SplashPage(),
    ),
  ),
];

