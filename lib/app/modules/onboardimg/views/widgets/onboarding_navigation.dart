import 'package:e_commerce/app/modules/onboardimg/controllers/onboardimg_controller.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../device/deviceUtility.dart';
class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=OnboardimgController.instance;
    final dark=TheHelperFunctions.isDarkMode(BuildContext, context);
    return Positioned(

        bottom: rDeviceUtils.getBottomNavigationBArHeight() + 25,
        left: 4,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked:controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(dotColor:dark?rColors.light: rColors.dark, dotHeight: 6),
        ));
  }
}