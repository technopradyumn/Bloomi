import 'package:bloomi/features/auth/presentation/pages/sign_in_page.dart';
import 'package:bloomi/features/auth/presentation/pages/under18_page.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> authRoutes = [
  GoRoute(
    path: '/sign-in',
    builder: (context, state) => const SignInPage(),
  ),
  GoRoute(
    path: '/under-18',
    builder: (context, state) => const Under18Page(),
  ),
];

