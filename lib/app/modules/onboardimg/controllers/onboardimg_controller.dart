import 'package:e_commerce/app/modules/auth/views/login.dart';
import 'package:e_commerce/app/modules/home/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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

    final storage=GetStorage();


    if(kDebugMode){
      print("Bangladesh next");
      print(storage.read("IsFirstTime"));
    }


    storage.write("IsFirstTime", false);

    if(kDebugMode){
      print("Bangladesh next");
      print(storage.read("IsFirstTime"));
    }
      Get.offAll(Login());
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
