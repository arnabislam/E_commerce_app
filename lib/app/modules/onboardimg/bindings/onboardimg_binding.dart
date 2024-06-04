import 'package:get/get.dart';

import '../controllers/onboardimg_controller.dart';

class OnboardimgBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardimgController>(
      () => OnboardimgController(),
    );
  }
}
