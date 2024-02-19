import 'package:clothing_e_commerce_app/models/onboarding_page.dart';
import 'package:clothing_e_commerce_app/screens/onboarding/components/onboarding_button.dart';
import 'package:clothing_e_commerce_app/screens/onboarding/components/onboarding_number_widget.dart';
import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key,
    required this.index,
    required this.totalIndexes,
    required this.onboardingPage,
    required this.canSkip,
    required this.onTab,
    required this.skipOnboarding,
  });

  final int index;
  final int totalIndexes;
  final OnboardingPage onboardingPage;
  final bool canSkip;
  final VoidCallback onTab;
  final VoidCallback skipOnboarding;

  @override
  Widget build(BuildContext context) {

    double appBarHeight = AppBar().preferredSize.height;

    return ColoredBox(
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: appBarHeight,
            left: 16,
            child: OnboardingNumberWidget(
              currentIndex: index + 1,
              totalIndexes: totalIndexes,
            ),
          ),
          Positioned(
            top: appBarHeight,
            right: 16,
            child: GestureDetector(
              onTap: skipOnboarding,
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            )
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
                _buildImageWidget(),
                _buildTitleDescriptionTextWidget(),
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

  Widget _buildImageWidget() {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.symmetric(
            horizontal: 32.0
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                onboardingPage.image,
              ),
              fit: BoxFit.fill
          ),
        ),
      ),
    );
  }

  Widget _buildTitleDescriptionTextWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 62,
          ),
          Text(
            onboardingPage.title,
            maxLines: 1,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16,),
          Text(
            onboardingPage.description,
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
    );
  }
}