import 'package:clothing_e_commerce_app/models/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPagesController extends GetxController {
  final PageController pageController = PageController();
  final RxInt activePage = 0.obs;
  final RxList<OnboardingPage> onboardingPageItems = <OnboardingPage>[].obs;

  @override
  void onInit() {
    super.onInit();
    updateActivePage(1); // set active page as default 1
    initOnboardingItemsList();
  }

  void initOnboardingItemsList() {
    final List<OnboardingPage> pages = [
      OnboardingPage(
        title: 'Choose Product',
        image: 'assets/onboarding/onboarding_screen_1.png',
        description: "A product is the item offered for sale.A product can be a service or an item.It can be physical or in virtual or cyber form",
      ),
      OnboardingPage(
         title: 'Make Payment',
        image: 'assets/onboarding/onboarding_screen_2.png',
        description: 'Payment is the transfer of money service in exchange product or Payments typically made terms agreed',
      ),
      OnboardingPage(
         title: 'Get Your Order',
        image: 'assets/onboarding/onboarding_screen_3.png',
        description: 'Business or commence an order is a stated intention either spoken to engage in a commercial transaction specific products',
      ),
    ];

    onboardingPageItems.addAll(pages);
  }

  void updateActivePage(int page) {
    activePage.value = page;
  }

  void onNextPage() {
    if(activePage.value  < onboardingPageItems.value.length) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastEaseInToSlowEaseOut,);
    }
  }
}