import 'package:e_commerce/app/modules/auth/views/forgot_password_view.dart';
import 'package:e_commerce/app/modules/auth/views/password_reset_view.dart';
import 'package:e_commerce/app/modules/auth/views/verify_email_view.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SuccessScreenlView extends GetView {
  const SuccessScreenlView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: rSuccessScreen(
      image: 'assets/images/success.jpg',
      title: 'Your Account Successfully Created',
      subtitle:
          'Welcome To yout kdhfbv ,h gvsekl gs,j gsr,jg sg,shr gsjghs gsm,rjhg sgksr gsgs gskhg s,gh srgs gskg a,hg sg',
      onPressed: () {
        Get.to(ForgotPasswordView());
      },
      showButton: true,
    ));
  }
}

class rSuccessScreen extends StatelessWidget {
  const rSuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onPressed,
    required this.showButton,
  });
  final String image, title, subtitle;
  final VoidCallback onPressed;
  final bool showButton;
  @override
  Widget build(BuildContext context) {
    final dark =TheHelperFunctions.isDarkMode(BuildContext, context);
    return Padding(
      padding: EdgeInsets.all(rSize.defaultSpace),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(image),
            width: TheHelperFunctions.screenWidth() + 2,
          ),
          const SizedBox(
            height: rSize.spaceBtwSections,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(color:dark?rColors.dark: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: rSize.spaceBtwSections,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(color:dark?rColors.dark: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: rSize.spaceBtwSections,
          ),
          showButton
              ? SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed, child: Text("Continue")))
              : Container()
        ],
      ),
    );
  }
}
