import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const SocialButton({Key? key, required this.imagePath, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0.0,
      focusElevation: 0.0,
      hoverElevation: 0.0,
      highlightElevation: 0.0,
      onPressed: onPressed,
      shape: const CircleBorder(),
      color: Colors.white.withOpacity(0.6),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Ink.image(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          width: 36.0,
          height: 36.0,
        ),
      ),
    );
  }
}
