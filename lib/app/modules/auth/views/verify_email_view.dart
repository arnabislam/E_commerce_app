import 'package:e_commerce/app/modules/auth/views/login.dart';
import 'package:e_commerce/app/modules/auth/views/success_screenl_view.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../device/helper_function.dart';

class VerifyEmailView extends GetView {
  const VerifyEmailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          actions: [
            IconButton(onPressed: () => Login(), icon: Icon(Icons.close))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(rSize.defaultSpace),
            child: Column(
              children: [
                Image(
                  image: const AssetImage("assets/images/verify_email.png"),
                  width: TheHelperFunctions.screenWidth() + 0.6,
                ),
                const SizedBox(
                  height: rSize.spaceBtwSections,
                ),
                Text(
                  "Verify Your Email Address",
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: rSize.spaceBtwItems,
                ),
                Text(
                  "support121@coding.com",
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: rSize.spaceBtwItems,
                ),
                Text(
                  "Congratulations fopr verifi=ying youur email adress next email verification code will sent instant on your email. please put your code in verified",
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: rSize.spaceBtwSections,
                ),

                SizedBox(

                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      Get.to(SuccessScreenlView());
                    }, child: Text("Verify Emsil"))),

                const SizedBox(
                  height: rSize.spaceBtwItems,
                ),
                Text(
                  "Resend email",
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),

              ],
            ),
          ),
        ));
  }
}
