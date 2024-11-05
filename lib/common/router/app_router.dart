import 'package:go_router/go_router.dart';
import 'package:promultimedia/common/enum/app_routes.dart';
import 'package:promultimedia/home/view/home_view.dart';
import 'package:promultimedia/injection_container.dart';
import 'package:promultimedia/onboarding/views/onboarding_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: _routes,
  );

  static final List<RouteBase> _routes = [
    GoRoute(
      path: AppRoutes.homePage.path,
      redirect: (context, state) async {
        final isOnboardingCompleted =
            locator<SharedPreferences>().getBool('onboardingCompleted') ??
                false;

        if (!isOnboardingCompleted) {
          return AppRoutes.onboardingPage.path;
        } else {
          return null;
        }
      },
      pageBuilder: (context, state) => NoTransitionPage(
        child: const HomeView(),
        name: AppRoutes.homePage.routeName,
      ),
    ),
    GoRoute(
      path: AppRoutes.onboardingPage.path,
      pageBuilder: (context, state) {
        return NoTransitionPage(
          child: const OnboardingView(),
          name: AppRoutes.onboardingPage.routeName,
        );
      },
    ),
  ];
}
