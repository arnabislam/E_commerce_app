import 'package:e_commerce/app/modules/auth/views/password_reset_view.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SuccessScreenlView extends GetView {
  const SuccessScreenlView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.all(rSize.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center
          ,
          children: [
            Image(image: AssetImage("assets/images/success.jpg"),width: TheHelperFunctions.screenWidth()+2,),
            const SizedBox(
              height: rSize.spaceBtwSections,
            ),
            Text(
              "Your Account Successfully Created!",
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
                child: ElevatedButton(onPressed: (){
                  Get.to(PasswordResetView());
                }, child: Text("Continue")))

          ],
        ),
      )
    );
  }
}
