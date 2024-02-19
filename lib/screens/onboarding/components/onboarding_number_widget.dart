import 'package:flutter/material.dart';

class OnboardingNumberWidget extends StatelessWidget {
  const OnboardingNumberWidget({
    super.key,
    required this.currentIndex,
    required this.totalIndexes,
  });

  final int currentIndex;
  final int totalIndexes;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: '${currentIndex}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: '/',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.grey,
            ),
          ),
          TextSpan(
            text: '${totalIndexes}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: currentIndex == totalIndexes ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}