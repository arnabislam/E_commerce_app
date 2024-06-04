import 'package:e_commerce/app/modules/onboardimg/controllers/onboardimg_controller.dart';
import 'package:flutter/material.dart';

import '../../../../../device/deviceUtility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key, required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: rDeviceUtils.getAppBarHeight(),
        right: 0,
        child: TextButton(
          onPressed: () {
            print("clicked");
            OnboardimgController.instance.skipPage();
          },
          style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
          child:  Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
