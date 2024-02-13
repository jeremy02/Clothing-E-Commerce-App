import 'package:flutter/material.dart';
import 'package:clothing_e_commerce_app/utils/app_utils.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
    required this.skip,
    required this.onTab,
    required this.index,
  });

  final bool skip;
  final VoidCallback onTab;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppUtils.hexToColor("#F67952"),
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(36.0),
        ),
      ),
      onPressed: () { },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 48.0,
            vertical: 16.0
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Next',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 6.0,
            ),
            Row(
              children: [
                Align(
                  widthFactor: 0.35,
                  child: Icon(
                    Icons.keyboard_arrow_right_sharp,
                    size: 28.0,
                    color: Colors.white.withOpacity(index == 0 ? 1.0 : 0.5),
                  ),
                ),
                Align(
                  widthFactor: 0.35,
                  child: Icon(
                    Icons.keyboard_arrow_right_sharp,
                    size: 28.0,
                    color: Colors.white.withOpacity(index == 1 ? 1.0 : 0.5),
                  ),
                ),
                Align(
                  widthFactor: 0.35,
                  child: Icon(
                    Icons.keyboard_arrow_right_sharp,
                    color: Colors.white.withOpacity(index == 2 ? 1.0 : 0.5),
                    size: 28.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}