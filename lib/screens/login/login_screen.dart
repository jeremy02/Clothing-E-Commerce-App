import 'package:clothing_e_commerce_app/screens/login/components/custom_input_field.dart';
import 'package:clothing_e_commerce_app/screens/login/components/rounded_button.dart';
import 'package:clothing_e_commerce_app/utils/app_utils.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double appBarHeight = AppBar().preferredSize.height;

    return Scaffold(
      backgroundColor: AppUtils.hexToColor("#E5E5E5"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: appBarHeight,
            horizontal: 20.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
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
                height: 20.0,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppUtils.hexToColor("#230A06"),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              RoundedButton(
                  buttonText: "Log In",
                  buttonColor: AppUtils.hexToColor("#F67952"),
                  buttonFontSize: 18.0,
                  onPressed: () {},
                  horizontalPadding: 56.0,
              ),
              const SizedBox(
                height: 36,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1.0,
                      color: AppUtils.hexToColor("#232E24"),
                      indent: 48,
                      endIndent: 20,
                      height: 0.5,
                    ),
                  ),
                  Text(
                    "Or",
                    style: TextStyle(
                      fontSize: 17,
                      color: AppUtils.hexToColor("#230A06"),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1.0,
                      color: AppUtils.hexToColor("#232E24"),
                      indent: 20,
                      endIndent: 48,
                      height: 0.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    elevation: 0.0,
                    focusElevation: 0.0,
                    hoverElevation: 0.0,
                    highlightElevation: 0.0,
                    onPressed: () {},
                    shape: const CircleBorder(),
                    color: Colors.white.withOpacity(0.6),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Ink.image(
                        image: const AssetImage("assets/auth/icon_facebook.png"),
                        fit: BoxFit.cover,
                        width: 36.0,
                        height: 36.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    elevation: 0.0,
                    focusElevation: 0.0,
                    hoverElevation: 0.0,
                    highlightElevation: 0.0,
                    onPressed: () {},
                    shape: const CircleBorder(),
                    color: Colors.white.withOpacity(0.6),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Ink.image(
                        image: const AssetImage("assets/auth/icon_google.png"),
                        fit: BoxFit.cover,
                        width: 36.0,
                        height: 36.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}