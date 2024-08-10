import 'package:e_commerce/app/modules/auth/views/signupForm.dart';
import 'package:e_commerce/app/modules/auth/views/verify_email_view.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:e_commerce/utils/tsocialbutton.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    SignupController controller = Get.put(SignupController());


    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: dark ? Colors.white : Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(rSize.defaultSpace),
          child: Column(
            children: [
              Text(
                "Lets Create Your Account",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: dark ? Colors.white : Colors.black),
              ),
              const SizedBox(height: rSize.spaceBtwSections),

              //signup form
              SignupForm(dark: dark),

              SizedBox(
                height: rSize.spaceBtwSections,
              ),
              Row(
                children: [
                  SizedBox(
                      height: 40,
                      width: 20,
                      child: Obx(() {
                        return Checkbox(value: controller.privacyPolicy.value, onChanged: (value) {
                          controller.privacyPolicy.value=! controller.privacyPolicy.value;
                        });
                      })),
                  SizedBox(
                    width: rSize.spaceBtwItems,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "I agree to",
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodySmall),
                    TextSpan(
                        text: "Privacy policy",
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(
                            color: dark ? Colors.white : rColors.primary,
                            decoration: TextDecoration.underline)),
                    TextSpan(
                        text: "And",
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodySmall),
                    TextSpan(
                        text: "Terms of use",
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(
                            color: dark ? Colors.white : rColors.primary,
                            decoration: TextDecoration.underline)),
                  ]))
                ],
              ),
              SizedBox(
                height: rSize.spaceBtwSections,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => controller.signup(),
                      child: Text("Sign Up"))),
              SizedBox(
                height: rSize.spaceBtwItems,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                        color: dark ? Colors.white : Colors.black,
                        thickness: 0.5,
                        indent: 60,
                        endIndent: 5,
                      )),
                  const Text(
                    "Or Sign In With",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Flexible(
                      child: Divider(
                        color: dark ? Colors.white : Colors.grey,
                        thickness: 0.5,
                        indent: 60,
                        endIndent: 5,
                      )),
                ],
              ),
              const SizedBox(
                height: rSize.spaceBtwSections,
              ),
              tSocialButton(dark: dark),
            ],
          ),
        ),
      ),
    );
  }
}




