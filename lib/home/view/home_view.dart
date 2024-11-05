import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:promultimedia/common/enum/app_routes.dart';
import 'package:promultimedia/injection_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  void _openOnboardingScreen(BuildContext context) {
    context.go(AppRoutes.onboardingPage.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home View'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await locator<SharedPreferences>()
                    .setBool('onboardingCompleted', false);
                if (context.mounted) _openOnboardingScreen(context);
              },
              child: const Text('Restart Onboarding status'),
            ),
          ],
        ),
      ),
    );
  }
}
