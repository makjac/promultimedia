import 'package:flutter/material.dart';
import 'package:promultimedia/common/router/app_router.dart';
import 'package:promultimedia/common/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Pro Multimedia',
      theme: AppTheme.theme,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      routerDelegate: AppRouter.router.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}
