/// Enum `AppRoutes` is used to define the application's navigation routes.
enum AppRoutes {
  homePage('Home_page', '/'),
  onboardingPage('Onboarding_Page', '/onboarding');

  /// Constructor for initializing the `AppRoutes`
  const AppRoutes(this.routeName, this.path);

  /// The name of the route.
  final String routeName;

  /// The path associated with the route.
  final String path;
}
