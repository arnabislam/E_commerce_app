import 'package:e_commerce/app/modules/home/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardimgController extends GetxController {
  //TODO: Implement OnboardimgController

  static OnboardimgController get instance => Get.find();
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextpage() {
    if (currentPageIndex == 2) {
      Get.to(HomeView());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
