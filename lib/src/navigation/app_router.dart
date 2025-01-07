import 'package:go_router/go_router.dart' show GoRoute, GoRouter;

import '../ui/views/about_view.dart';
import '../ui/widgets/home_builder.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      //
      GoRoute(
        path: '/',
        builder: (_, __) => HomeBuilder(),
      ),

      //
      GoRoute(
        path: "/about",
        builder: (_, __) => AboutView(),
      )
    ],
  );
}
