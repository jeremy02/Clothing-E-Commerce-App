import 'package:clothing_e_commerce_app/screens/onboarding/components/onboarding_button.dart';
import 'package:clothing_e_commerce_app/screens/onboarding/components/onboarding_number_widget.dart';
import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key,
    required this.title,
    required this.description,
    required this.canSkip,
    required this.image,
    required this.onTab,
    required this.index,
    required this.totalIndexes,
  });

  final String title;
  final String description;
  final bool canSkip;
  final String image;
  final VoidCallback onTab;
  final int index;
  final int totalIndexes;

  @override
  Widget build(BuildContext context) {

    double appBarHeight = AppBar().preferredSize.height;

    return ColoredBox(
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: appBarHeight,
            right: 0,
            left: 16,
            child: OnboardingNumberWidget(
              currentIndex: index + 1,
              totalIndexes: totalIndexes,
            ),
          ),
          Positioned(
            top: appBarHeight * 2,
            right: 0,
            left: 0,
            bottom: appBarHeight * 2.5,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      margin: EdgeInsets.symmetric(
                        horizontal: 32.0
                      ),
                      decoration: BoxDecoration(
                         image: DecorationImage(
                            image: AssetImage(
                              image,
                            ),
                            fit: BoxFit.fill
                         ),
                      ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 62,
                      ),
                      Text(
                        title,
                        maxLines: 1,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 16,),
                      Text(
                        description,
                        maxLines: 3,
                        style: const TextStyle(
                          fontSize: 16,
                          height: 1.5,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                OnboardingButton(canSkip: canSkip, onTab: onTab, index: index),
              ],
            ),
          ),
        ],
      ),
    );
  }
}