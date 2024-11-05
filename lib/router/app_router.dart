import 'package:go_router/go_router.dart';
import 'package:promultimedia/router/app_routes.dart';
import 'package:promultimedia/views/home_view.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: _routes,
  );

  static final List<RouteBase> _routes = [
    GoRoute(
      path: AppRoutes.homePage.path,
      pageBuilder: (context, state) => NoTransitionPage(
        child: const HomeView(),
        name: AppRoutes.homePage.routeName,
      ),
    ),
  ];
}
