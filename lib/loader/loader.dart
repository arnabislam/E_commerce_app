import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class rLoaders {
  static hideSnackBar() =>
      ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

  static customToast({required message}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
      content: Container(
        padding: EdgeInsets.all(12.0),
        margin: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: TheHelperFunctions.isDarkMode(Get.context!, BuildContext)
                ? rColors.darkGrey.withOpacity(0.9)
                : rColors.grey.withOpacity(0.9)),
        child: Center(
          child: Text(
            message,
            style: Theme.of(Get.context!).textTheme.labelLarge,
          ),
        ),
      ),
      elevation: 0,
      duration: Duration(seconds: 3),
      backgroundColor: Colors.transparent,
    ));
  }

  static successSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(title, message,

    isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: rColors.primary,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: EdgeInsets.all(10),
      icon: Icon(Icons.check,color: Colors.white,),
    );
  }
  static warningSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(title, message,

    isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: rColors.primary,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: EdgeInsets.all(20),
      icon: Icon(Icons.warning,color: Colors.white,),
    );
  }
  static errorSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(title, message,

    isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: Colors.red,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: EdgeInsets.all(20),
      icon: Icon(Icons.warning,color: Colors.white,),
    );
  }
}
