import 'package:flutter/material.dart';
import 'package:clothing_e_commerce_app/utils/app_utils.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final String imageIconPath;
  final bool obscureText;
  final TextInputType keyboardType;

  const CustomInputField({
    super.key,
    required this.hintText,
    required this.imageIconPath,
    required this.obscureText, required this.keyboardType
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.75),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.transparent,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Image.asset(
              imageIconPath,
              width: 30.0,
              height: 30.0,
              fit: BoxFit.cover,
              color: AppUtils.hexToColor("#F67952"),
            ),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: TextField(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                textBaseline: TextBaseline.alphabetic,
              ),
              obscureText: obscureText,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
