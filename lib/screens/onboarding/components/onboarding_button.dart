import 'package:flutter/material.dart';
import 'package:clothing_e_commerce_app/utils/app_utils.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
    required this.canSkip,
    required this.onTab,
    required this.index,
  });

  final bool canSkip;
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
      onPressed: onTab,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: canSkip ? 48.0 : 36.0,
            vertical: 16.0
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              canSkip ? 'Next' : 'Get Started',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 6.0,
            ),
            Row(
              children: [
                _buildArrowForwardWidget(0),
                _buildArrowForwardWidget(1),
                _buildArrowForwardWidget(2),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildArrowForwardWidget(int compareIndex) {
    return Align(
      widthFactor: 0.35,
      child: Icon(
        Icons.keyboard_arrow_right_sharp,
        size: 28.0,
        color: Colors.white.withOpacity(index == compareIndex ? 1.0 : 0.5),
      ),
    );
  }
}