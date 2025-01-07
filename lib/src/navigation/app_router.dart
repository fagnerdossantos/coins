import 'package:coins/src/ui/views/about_view.dart';
import 'package:coins/src/ui/widgets/home_builder.dart';
import 'package:go_router/go_router.dart';

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
