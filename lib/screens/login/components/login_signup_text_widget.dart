import 'package:clothing_e_commerce_app/utils/app_utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginSignupTextWidget extends StatelessWidget {
  const LoginSignupTextWidget({
    super.key,
    required this.captionText,
    required this.clickableText,
    required this.onTap,
  });

  final String captionText;
  final String clickableText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: captionText,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.black.withOpacity(0.6),
              decoration: TextDecoration.none,
            ),
          ),
          TextSpan(
            text: clickableText,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = onTap,
          ),
        ],
      ),
    );
  }
}