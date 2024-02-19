import 'package:clothing_e_commerce_app/screens/login/login_screen.dart';
import 'package:clothing_e_commerce_app/screens/onboarding/onboarding_screen.dart';
import 'package:clothing_e_commerce_app/screens/splash_screen.dart';
import 'package:clothing_e_commerce_app/utils/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.initialRoute,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}