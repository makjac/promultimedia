import 'package:flutter_test/flutter_test.dart';
import 'package:promultimedia/common/enum/app_routes.dart';

void main() {
  group('AppRoutes', () {
    test('homePage has correct values', () {
      expect(AppRoutes.homePage.routeName, 'Home_page');
      expect(AppRoutes.homePage.path, '/');
    });

    test('onboardingPage has correct values', () {
      expect(AppRoutes.onboardingPage.routeName, 'Onboarding_Page');
      expect(AppRoutes.onboardingPage.path, '/onboarding');
    });
  });
}
