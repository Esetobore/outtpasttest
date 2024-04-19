import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:outtapptest/onboard/screens/subscreens/onBoard1.dart';
import 'package:outtapptest/onboard/screens/subscreens/onBoard2.dart';
import 'package:outtapptest/onboard/screens/subscreens/onBoard3.dart';
import 'package:outtapptest/onboard/screens/widgets/onboarding_navigation.dart';
import '../controller/onboard_controller.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final controller = Get.put(OnboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.currentIndex.call,
              children: const [
                OnboardingScreen1(),
                OnboardingScreen2(),
                OnboardingScreen3()
              ],
            ),
            OnBoardingNavigation()
          ],
        ),
      ),
    );
  }
}





