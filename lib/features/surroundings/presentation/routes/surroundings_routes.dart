import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/features/surroundings/presentation/bloc/surroundings_bloc.dart';
import 'package:bloomi/features/surroundings/presentation/pages/surroundings_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> surroundingsRoutes = [
  GoRoute(
    path: '/surroundings',
    builder: (context, state) => BlocProvider<SurroundingsBloc>(
      create: (_) => sl<SurroundingsBloc>(),
      child: const SurroundingsPage(),
    ),
  ),
];

