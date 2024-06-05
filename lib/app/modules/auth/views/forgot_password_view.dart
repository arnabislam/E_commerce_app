import 'package:e_commerce/app/modules/auth/views/login.dart';
import 'package:e_commerce/app/modules/auth/views/password_reset_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../device/helper_function.dart';
import '../../../../utils/size.dart';

class ForgotPasswordView extends GetView {
  const ForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForgotPasswordView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(rSize.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            TextFormField(
              expands: false,
              decoration:  InputDecoration(
                  prefixIcon: Icon(Icons.play_arrow,color: dark?Colors.white:Colors.black,), labelText: "E-mail",labelStyle: TextStyle(color: dark?Colors.white:Colors.black)),
              style: TextStyle(color: dark?Colors.white:Colors.black), ),

            const SizedBox(
              height: rSize.spaceBtwSections,
            ),
          SizedBox(
              width:double.infinity,
              child: ElevatedButton(onPressed: (){
                Get.to(Login());
              }, child: Text("Submit")))
        ],),
      )
    );
  }
}
