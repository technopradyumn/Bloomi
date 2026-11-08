import 'package:bloomi/features/dev/presentation/pages/component_gallery_page.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> devRoutes = [
  GoRoute(
    path: '/dev/gallery',
    builder: (context, state) => const ComponentGalleryPage(),
  ),
];

