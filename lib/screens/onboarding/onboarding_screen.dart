import 'package:clothing_e_commerce_app/controllers/onboarding_pages_controller.dart';
import 'package:clothing_e_commerce_app/models/onboarding_page.dart';
import 'package:clothing_e_commerce_app/screens/onboarding/components/onboarding_widget.dart';
import 'package:clothing_e_commerce_app/utils/app_scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final OnboardingPagesController onboardingPagesController = Get.put(OnboardingPagesController());

  void onNextPage() {
    onboardingPagesController.onNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final List<OnboardingPage> onboardingPages = onboardingPagesController.onboardingPageItems.value;

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              controller: onboardingPagesController.pageController,
              itemCount: onboardingPages.length,
              scrollBehavior: AppScrollBehavior(),
              onPageChanged: (int page) {
                onboardingPagesController.updateActivePage(page);
              },
              itemBuilder: (BuildContext context, int index){

                final OnboardingPage onboardingPage = onboardingPages[index];

                return OnboardingWidget(
                  index: index,
                  totalIndexes: onboardingPages.length,
                  onboardingPage: onboardingPage,
                  canSkip: index != (onboardingPages.length - 1),
                  onTab: onNextPage,
                );
              }
          ),
        ],
      ),
    );
  }
}
