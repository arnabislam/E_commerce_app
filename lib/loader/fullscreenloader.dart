import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/loader/animation_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class rFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,//this dialog can't be dismissed by tapped it outside
        builder: (_) => PopScope(
            canPop: false,
            child: Container(
              color: TheHelperFunctions.isDarkMode(Get.context, BuildContext)
                  ? rColors.dark
                  : rColors.textWhite,
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 250,),
                  rAnimationLoader(text: text, animation: animation, )

                ],
              ),
            )));
  }
  //stop the open  current loading
//the method doesn't return anything

static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();//close the dialog open the navigator
}
}
