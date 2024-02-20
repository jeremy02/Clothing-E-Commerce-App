import 'package:clothing_e_commerce_app/screens/login/components/custom_input_field.dart';
import 'package:clothing_e_commerce_app/utils/app_utils.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double appBarHeight = AppBar().preferredSize.height;

    return Scaffold(
      backgroundColor: AppUtils.hexToColor("#E5E5E5"),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: appBarHeight,
          horizontal: 20.0
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
            const CustomInputField(
              hintText: 'Username',
              imageIconPath: 'assets/auth/icon_message.png',
              obscureText: false,
              keyboardType: TextInputType.emailAddress
            ),
            const SizedBox(
              height: 16.0,
            ),
            const CustomInputField(
              hintText: 'Password',
              imageIconPath: 'assets/auth/icon_lock.png',
              obscureText: true,
                keyboardType: TextInputType.visiblePassword
            ),
            const SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}