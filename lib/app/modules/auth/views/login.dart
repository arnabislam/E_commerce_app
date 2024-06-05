import 'package:e_commerce/app/modules/auth/views/signup_view.dart';
import 'package:e_commerce/constant/imageString.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/tsocialbutton.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 120,
            left: rSize.defaultSpace,
            right: rSize.defaultSpace,
            bottom: rSize.defaultSpace,
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      height: 100,
                      image: AssetImage(dark
                          ? rImageString.darkImage
                          : rImageString.lightImage)),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: dark ? Colors.white : Colors.black),
                  ),
                  const SizedBox(
                    height: rSize.sm,
                  ),
                  Text(
                    "Discover Limitless Chopice and Unlimited Conversation",
                    style: TextStyle(
                        fontSize: 14,
                        color: dark ? Colors.white : Colors.black),
                  )
                ],
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: rSize.spaceBtwSections),
                child: Column(
                  children: [
                    TextFormField(
                      decoration:  InputDecoration(
                          prefixIcon: Icon(Icons.email), labelText: "Email",labelStyle: TextStyle(color: dark?Colors.white:Colors.black)),
                   style: TextStyle(color: dark?Colors.white:Colors.black), ),
                    const SizedBox(
                      height: rSize.spaceBtwInputFields,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.remove_red_eye),
                          labelText: "Password",labelStyle: TextStyle(color: dark?Colors.white:Colors.black)),
                      style: TextStyle(color: dark?Colors.white:Colors.black),),
                    const SizedBox(
                      height: rSize.spaceBtwInputFields / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            Text(
                              "Remember me",
                              style: TextStyle(
                                color: dark ? Colors.white : Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                            onPressed: () {}, child: Text("Forgott pssword")),
                      ],
                    ),
                    const SizedBox(
                      height: rSize.spaceBtwSections,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("SignIn")),
                    ),
                    const SizedBox(
                      height: rSize.spaceBtwItems,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {
                            Get.to(SignupView());
                          }, child: const Text("Create Account")),
                    ),
                    const SizedBox(
                      height: rSize.spaceBtwSections,
                    ),
                  ],
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                    color: dark ? Colors.white : Colors.grey,
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
                height: rSize.spaceBtwItems,
              ),
              tSocialButton(dark: dark)
            ],
          ),
        ),
      ),
    );
  }
}


