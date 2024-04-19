import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:outtapptest/Home/screens/HomeScreen.dart';

class OnboardController extends GetxController {
  static OnboardController get instance => Get.find();

  final pageController = PageController();
  var currentIndex = 0.obs;

  void updateIndex(int index) {
    currentIndex.value = index;
  }
  void dotNavigationIndex(int index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  void skipPage() {
    Get.offAll(const HomeScreen());
  }

}