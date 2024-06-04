import 'package:e_commerce/app/modules/onboardimg/views/widgets/onboard_skip.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/onboarding_navigation.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/onboarding_nextbutton.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/onboarding_page.dart';
import 'package:e_commerce/constant/imageString.dart';
import 'package:e_commerce/device/deviceUtility.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/onboardimg_controller.dart';

class OnboardimgView extends GetView<OnboardimgController> {
  const OnboardimgView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnboardimgController());
    return Scaffold(
        body: Stack(
      children: [
        OnBoardingSkip(title: 'Skip',),

        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              title: 'Choose Your Product',
              subtitle:
                  'Welcome to world of Limited choices your perfect Produxt awards',
              image: 'assets/images/online_shop.jpg',
            ),
            OnBoardingPage(
              title: 'Select Payment Method',
              subtitle:
                  'Welcome to world of Limited choices your perfect Produxt awards',
              image: 'assets/images/shop2.jpg',
            ),
            OnBoardingPage(
              title: 'Deliver Your Door Step',
              subtitle:
                  'Welcome to world of Limited choices your perfect Produxt awards',
              image: 'assets/images/shop3.jpg',
            ),
          ],
        ),
        OnBoardingNavigation(),
        OnBoardingNextButton()
      ],
    ));
  }
}


