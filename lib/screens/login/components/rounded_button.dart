import 'package:clothing_e_commerce_app/utils/app_utils.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonFontSize,
    required this.onPressed,
    this.horizontalPadding,
  });

  final String buttonText;
  final Color buttonColor;
  final double buttonFontSize;
  final VoidCallback onPressed;
  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(36.0),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 36.0,
            vertical: 16.0
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: buttonFontSize,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}