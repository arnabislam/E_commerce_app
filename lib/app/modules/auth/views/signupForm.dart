import 'package:e_commerce/utils/rValidator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../utils/size.dart';
import '../controllers/signup_controller.dart';


class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  validator: (value) =>
                      rValidator.emptyTextValidation('First Name', value),
                  controller: controller.firstName,
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
                  validator: (value) =>
                      rValidator.emptyTextValidation('Last Name', value),
                  controller: controller.lastName,
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
            validator: (value) =>
                rValidator.emptyTextValidation('Username', value),
            expands: false,
            controller: controller.userName,
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
            validator: (value) => rValidator.validateEmail(value),
            controller: controller.email,
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
            validator: (value) => rValidator.validatePhoneNumber(value),
            controller: controller.phoneNumber,
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
              validator: (value) => rValidator.validatePassword(value),
              controller: controller.password,
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