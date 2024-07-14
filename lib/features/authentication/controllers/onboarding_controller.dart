import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/login_screen/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();

  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(currentPageIndex.value);
  }

  void nextPage() {
    int page = currentPageIndex.value + 1;
    if (page == 3) {
      Get.offAll(const LoginScreen());
    } else {
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    Get.offAll(const LoginScreen());
  }
}
