import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  static HomeController get instance=>Get.find();
  final carousaleCurrentIndex=0.obs;

  void updatePageCurrentIndicator(index){
    carousaleCurrentIndex.value=index;
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
