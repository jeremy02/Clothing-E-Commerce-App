import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double appBarHeight = AppBar().preferredSize.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: appBarHeight,
          horizontal: 16.0
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: appBarHeight,
            ),
            Center(
              child: Image.asset(
                'assets/app/app_image.png',
                width: 80,
                height: 80,
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            const Text(
              "Log In",
              maxLines: 1,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}