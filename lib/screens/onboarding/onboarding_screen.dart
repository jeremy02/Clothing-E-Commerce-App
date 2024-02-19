import 'package:clothing_e_commerce_app/screens/onboarding/components/onboarding_widget.dart';
import 'package:clothing_e_commerce_app/utils/app_scroll_behavior.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final PageController  _pageController = PageController();

  int _activePage = 0;

  void onNextPage(){
    if(_activePage  < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastEaseInToSlowEaseOut,);
    }
  }

  final List<Map<String, dynamic>> _pages = [
    {
      'title': 'Choose Product',
      'image': 'assets/onboarding/onboarding_screen_1.png',
      'description': "A product is the item offered for sale.A product can be a service or an item.It can be physical or in virtual or cyber form",
      'skip': true
    },
    {
      'title': 'Make Payment',
      'image': 'assets/onboarding/onboarding_screen_2.png',
      'description': 'Payment is the transfer of money service in exchange product or Payments typically made terms agreed',
      'skip': true
    },
    {
      'title': 'Get Your Order',
      'image': 'assets/onboarding/onboarding_screen_3.png',
      'description': 'Business or commence an order is a stated intention either spoken to engage in a commercial transaction specific products',
      'skip': false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              controller: _pageController,
              itemCount: _pages.length,
              scrollBehavior: AppScrollBehavior(),
              onPageChanged: (int page) {
                setState(() {
                  _activePage = page;
                });
              },
              itemBuilder: (BuildContext context, int index){
                return OnboardingWidget(
                  index: index,
                  totalIndexes: _pages.length,
                  title: _pages[index]['title'],
                  description: _pages[index]['description'],
                  image: _pages[index]['image'],
                  skip: _pages[index]['skip'],
                  onTab: onNextPage,
                );
              }
          ),
        ],
      ),
    );
  }
}
