import 'package:flutter/material.dart';
import 'package:outtapptest/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../controller/onboard_controller.dart';

class OnBoardingNavigation extends StatelessWidget {
  OnBoardingNavigation({
    super.key,
  });
  final onBoardController = OnboardController.instance;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Positioned(
        bottom: kBottomNavigationBarHeight * 1,
        left: MediaQuery.of(context).size.width * 0.35,
        child: SmoothPageIndicator(
          controller: onBoardController.pageController,
          onDotClicked: onBoardController.dotNavigationIndex,
          count: 3,
          effect: JumpingDotEffect(
            activeDotColor: isDarkMode ? OTColors.primaryColorW :OTColors.primaryColorB, dotHeight: 10,
            spacing: 20,
            dotWidth: 30,
          ),
        ));
  }
}