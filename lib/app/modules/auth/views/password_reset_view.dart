import 'package:e_commerce/app/modules/auth/views/forgot_password_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../device/helper_function.dart';
import '../../../../utils/size.dart';

class PasswordResetView extends GetView {
  const PasswordResetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Padding(
          padding: EdgeInsets.all(rSize.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/password_reset.png"),width: TheHelperFunctions.screenWidth()+2,),
              const SizedBox(
                height: rSize.spaceBtwSections,
              ),
              Text(
                "Passwprd reset Email Sent!",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: rSize.spaceBtwSections,
              ),
              Text(
                "Welcome to your unlimited shoping site and you are doing besty shopping in this work=ld .So you are doing this without any doubt and growing with this",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: rSize.spaceBtwSections,
              ),
              SizedBox(
                  width:double.infinity,
                  child: ElevatedButton(onPressed: (){}, child: Text("Done"))),
              const SizedBox(
                height: rSize.spaceBtwSections,
              ),
              SizedBox(
                  width:double.infinity,
                  child: TextButton(onPressed: (){
                    Get.to(ForgotPasswordView());
                  }, child: Text("Resend email")))


            ],
          ),
        )
    );
  }
}
