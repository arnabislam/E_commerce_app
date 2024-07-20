import 'package:get/get.dart';

import '../controllers/subcatgories_controller.dart';

class SubcatgoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubcatgoriesController>(
      () => SubcatgoriesController(),
    );
  }
}
