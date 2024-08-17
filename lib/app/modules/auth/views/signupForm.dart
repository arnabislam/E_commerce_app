import 'package:e_commerce/utils/rValidator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../utils/size.dart';
import '../controllers/signup_controller.dart';


class SignupForm extends StatelessWidget {
   SignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;
  GlobalKey<FormState> signupFormKey =
  GlobalKey<FormState>();


  // String email='',password='',firstName='',lastName='',userName='',phoneNumber='';
   TextEditingController emailController = TextEditingController();
   TextEditingController firstNameController = TextEditingController();
   TextEditingController lastNameController = TextEditingController();
   TextEditingController userNameController = TextEditingController();
   TextEditingController phoneNumberController = TextEditingController();
   TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "Please enter the name";
                    }
                    return null;
                  },
                  controller:firstNameController,
                  expands: false,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: dark ? Colors.white : Colors.black,
                      ),
                      labelText: "First Name",
                      labelStyle: TextStyle(
                          color: dark ? Colors.white : Colors.black)),
                  style:
                  TextStyle(color: dark ? Colors.white : Colors.black),
                ),
              ),
              SizedBox(
                width: rSize.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "Please enter the lastname";
                    }
                    return null;
                  },
                  controller: lastNameController,
                  expands: false,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: dark ? Colors.white : Colors.black,
                      ),
                      labelText: "Last Name",
                      labelStyle: TextStyle(
                          color: dark ? Colors.white : Colors.black)),
                  style:
                  TextStyle(color: dark ? Colors.white : Colors.black),
                ),
              ),
              SizedBox(
                height: rSize.spaceBtwInputFields / 2,
              ),
            ],
          ),

          const SizedBox(height: rSize.spaceBtwItems),
          TextFormField(
            validator: (value){
              if(value==null || value.isEmpty){
                return "Please enter the username";
              }
              return null;
            },
            expands: false,
            controller: userNameController,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person_pin_outlined,
                  color: dark ? Colors.white : Colors.black,
                ),
                labelText: "Username",
                labelStyle:
                TextStyle(color: dark ? Colors.white : Colors.black)),
            style: TextStyle(color: dark ? Colors.white : Colors.black),
          ),
          const SizedBox(height: rSize.spaceBtwItems),
          TextFormField(
            validator: (value){
              if(value==null || value.isEmpty){
                return "Please enter the email";
              }
              return null;
            },
            controller: emailController,
            expands: false,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: dark ? Colors.white : Colors.black,
                ),
                labelText: "Email",
                labelStyle:
                TextStyle(color: dark ? Colors.white : Colors.black)),
            style: TextStyle(color: dark ? Colors.white : Colors.black),
          ),
          const SizedBox(height: rSize.spaceBtwItems),
          TextFormField(
            validator: (value){
              if(value==null || value.isEmpty){
                return "Please enter the phoneNumber";
              }
              return null;
            },
            controller: phoneNumberController,
            expands: false,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.phone,
                  color: dark ? Colors.white : Colors.black,
                ),
                labelText: "Phone Number",
                labelStyle:
                TextStyle(color: dark ? Colors.white : Colors.black)),
            style: TextStyle(color: dark ? Colors.white : Colors.black),
          ),
          const SizedBox(height: rSize.spaceBtwItems),
          Obx(() {
            return TextFormField(
              validator: (value){
                if(value==null || value.isEmpty){
                  return "Please enter the Paasssword";
                }
                return null;
              },
              controller: passwordController,
              expands: false,
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.padding,
                    color: dark ? Colors.white : Colors.black,
                  ),

                  //toggle value 1st true then false value return
                  suffixIcon: IconButton(onPressed: () =>
                  controller.hidePassword.value =
                  !controller.hidePassword.value, icon: controller.hidePassword.value?Icon(
                    Icons.remove_red_eye,
                    color: dark ? Colors.white : Colors.black,
                  ):Icon(
                    Icons.remove_done,
                    color: dark ? Colors.white : Colors.black,
                  ),),
                  labelText: "Password",
                  labelStyle:
                  TextStyle(color: dark ? Colors.white : Colors.black)),
              style: TextStyle(color: dark ? Colors.white : Colors.black),
            );
          }),
        ],
      ),
    );
  }
}