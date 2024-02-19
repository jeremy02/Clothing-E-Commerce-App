import 'package:clothing_e_commerce_app/screens/login/login_screen.dart';
import 'package:clothing_e_commerce_app/screens/onboarding/onboarding_screen.dart';
import 'package:clothing_e_commerce_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String initialRoute = '/';
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }
}