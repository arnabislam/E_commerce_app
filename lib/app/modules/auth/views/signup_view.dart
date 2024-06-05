import 'package:e_commerce/app/modules/auth/views/verify_email_view.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:e_commerce/utils/tsocialbutton.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SignupView extends GetView {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back,color: dark?Colors.white:Colors.black,),),
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

          const SizedBox(height:rSize.spaceBtwSections),
              Row(

                children: [
                  Expanded(

                    child: TextFormField(
                      expands: false,
                      decoration:  InputDecoration(
                          prefixIcon: Icon(Icons.person,color: dark?Colors.white:Colors.black,), labelText: "First Name",labelStyle: TextStyle(color: dark?Colors.white:Colors.black)),
                      style: TextStyle(color: dark?Colors.white:Colors.black), ),
                  ),
              SizedBox(width: rSize.spaceBtwInputFields,),
                  Expanded(
                    child: TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person,color: dark?Colors.white:Colors.black,),
                          labelText: "Last Name",labelStyle: TextStyle(color: dark?Colors.white:Colors.black)),
                      style: TextStyle(color: dark?Colors.white:Colors.black),),
                  ),
                  SizedBox(
                    height: rSize.spaceBtwInputFields / 2,
                  ),

                ],
              ),
              const SizedBox(height:rSize.spaceBtwItems),
              TextFormField(
                expands: false,
                decoration:  InputDecoration(
                    prefixIcon: Icon(Icons.person_pin_outlined,color: dark?Colors.white:Colors.black,), labelText: "Username",labelStyle: TextStyle(color: dark?Colors.white:Colors.black)),
                style: TextStyle(color: dark?Colors.white:Colors.black), ),


              const SizedBox(height:rSize.spaceBtwItems),
              TextFormField(
                expands: false,
                decoration:  InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined,color: dark?Colors.white:Colors.black,), labelText: "Email",labelStyle: TextStyle(color: dark?Colors.white:Colors.black)),
                style: TextStyle(color: dark?Colors.white:Colors.black), ),

              const SizedBox(height:rSize.spaceBtwItems),
              TextFormField(
                expands: false,
                decoration:  InputDecoration(
                    prefixIcon: Icon(Icons.phone,color: dark?Colors.white:Colors.black,), labelText: "Phone Number",labelStyle: TextStyle(color: dark?Colors.white:Colors.black)),
                style: TextStyle(color: dark?Colors.white:Colors.black), ),
              const SizedBox(height:rSize.spaceBtwItems),
              TextFormField(
                expands: false,
                decoration:  InputDecoration(
                    prefixIcon: Icon(Icons.padding,color: dark?Colors.white:Colors.black,),suffixIcon: Icon(Icons.remove_red_eye,color: dark?Colors.white:Colors.black,), labelText: "Password",labelStyle: TextStyle(color: dark?Colors.white:Colors.black)),
                style: TextStyle(color: dark?Colors.white:Colors.black), ),
              SizedBox(height: rSize.spaceBtwSections,),
              
              Row(
                children: [

                  SizedBox(
                    height: 40,width: 20,
                      child: Checkbox(value:true, onChanged: (value){})),
                  SizedBox(width: rSize.spaceBtwItems,),
                  Text.rich(TextSpan(
                    children: [
                      TextSpan(text: "I agree to",style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: "Privacy policy",style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark?Colors.white:rColors.primary,decoration: TextDecoration.underline
                      )),
                      TextSpan(text: "And",style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: "Terms of use",style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark?Colors.white:rColors.primary,decoration: TextDecoration.underline
                      )),
                    ]
                  ))
                ],
              ),

SizedBox(height: rSize.spaceBtwSections,),


              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Get.to(VerifyEmailView());
                  }, child: Text("Sign Up"))),
              SizedBox(height: rSize.spaceBtwItems,),
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
