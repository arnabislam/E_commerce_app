import 'package:e_commerce/app/modules/onboardimg/controllers/onboardimg_controller.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../device/deviceUtility.dart';
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=TheHelperFunctions.isDarkMode(BuildContext, context);
    
    return Positioned(
        bottom: rDeviceUtils.getBottomNavigationBArHeight(),
        right: 5,
        child: ElevatedButton(
            onPressed: () {
              OnboardimgController.instance.nextpage();
            },
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(), backgroundColor:dark?Colors.white: Colors.black),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            )));
  }
}