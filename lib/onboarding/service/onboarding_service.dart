import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:promultimedia/common/enum/app_routes.dart';
import 'package:promultimedia/injection_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A widget that provides onboarding services.
///
/// This widget is responsible for managing the onboarding process,
/// including displaying onboarding screens and handling user interactions.
class OnboardingService {
  OnboardingService(this._context, {SharedPreferences? sharedPreferences})
      : _sharedPreferences = sharedPreferences ?? locator<SharedPreferences>();

  final SharedPreferences _sharedPreferences;
  final BuildContext _context;

  /// Marks the onboarding process as completed.
  Future<void> markOnboardingCompleted() async {
    await _sharedPreferences.setBool('onboardingCompleted', true);
  }

  /// Navigates the user to the home screen.
  void navigateToHome() {
    if (_context.mounted) _context.go(AppRoutes.homePage.path);
  }
}
