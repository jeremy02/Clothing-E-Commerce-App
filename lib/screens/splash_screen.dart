import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _mockAsyncInit().then((_) {
      // Navigator.of(context).pushReplacementNamed('/onboarding');
      Navigator.of(context).pushReplacementNamed('/login');
    });
  }

  Future _mockAsyncInit() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
            'assets/app/app_image.png',
            height: 150,
            width: 150,
        ),
      ),
    );
  }
}
