import 'package:e_commerce/app/data/repositories/authentication/authentication_demo.dart';
import 'package:e_commerce/app/modules/auth/views/phone_authentication.dart';
import 'package:e_commerce/app/modules/auth/views/signupForm.dart';
import 'package:e_commerce/app/modules/auth/views/verify_email_view.dart';
import 'package:e_commerce/app/modules/onboardimg/views/onboardimg_view.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/loader/loader.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:e_commerce/utils/tsocialbutton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/rValidator.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  // String email = '', password = '', firstName = '', lastName = '', userName = '', phoneNumber = '';
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLaoding = false;
  final hidePassword = true.obs;
  bool isPass=false;

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();



  // registration() async {
  //   print("------greee----");
  //   if (password.isNotEmpty && userNameController.text.isNotEmpty && emailController.text.isNotEmpty) {
  //     try {
  //       UserCredential userCredential = await FirebaseAuth.instance
  //           .createUserWithEmailAndPassword(email: email, password: password);
  //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           content: Text(
  //             "Registered Successfully",
  //             style: TextStyle(fontSize: 20.0),
  //           )));
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => const PhoneAuthentication()));
  //     } on FirebaseAuthException catch (e) {
  //       if (e.code == 'weak-password') {
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //             backgroundColor: Colors.orangeAccent,
  //             content: Text(
  //               "Password Provided is too Weak",
  //               style: TextStyle(fontSize: 18.0),
  //             )));
  //       } else if (e.code == "email-already-in-use") {
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //             backgroundColor: Colors.orangeAccent,
  //             content: Text(
  //               "Account Already exists",
  //               style: TextStyle(fontSize: 18.0),
  //             )));
  //       }
  //     }
  //   }
  // }



  @override
  void despose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    lastNameController.dispose();
    firstNameController.dispose();
    userNameController.dispose();
    phoneNumberController.dispose();

  }


  void signUpUser() async {
    String res = await AuthenticationDemo().signUpUser(
        email: emailController.text,
        password: passwordController.text,
        firstName: firstNameController.text,
        lastname: lastNameController.text,
        userName: userNameController.text,
        phoneNumber: phoneNumberController.text);

    if (res ==
        "Successfully") {
      setState(() {
        isLaoding = true;
      });
      Get.to(PhoneAuthentication());
    } else {
      setState(() {
        isLaoding = false;
      });
      rLoaders.successSnackBar(title: "errur occured", );
    }
  }
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);

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
                "Let's Create Your Account",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: dark ? Colors.white : Colors.black),
              ),
              const SizedBox(height: rSize.spaceBtwSections),

              //signup form
              Form(
                key: signupFormKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter the name";
                              }
                              return "null";
                            },
                            controller: firstNameController,
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
                            TextStyle(
                                color: dark ? Colors.white : Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: rSize.spaceBtwInputFields,
                        ),
                        Expanded(
                          child: TextFormField(
                            validator: (value)=>  rValidator.emptyTextValidation('First Name', value),
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
                            TextStyle(
                                color: dark ? Colors.white : Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: rSize.spaceBtwInputFields / 2,
                        ),
                      ],
                    ),

                    const SizedBox(height: rSize.spaceBtwItems),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
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
                      style: TextStyle(
                          color: dark ? Colors.white : Colors.black),
                    ),
                    const SizedBox(height: rSize.spaceBtwItems),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
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
                      style: TextStyle(
                          color: dark ? Colors.white : Colors.black),
                    ),
                    const SizedBox(height: rSize.spaceBtwItems),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
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
                      style: TextStyle(
                          color: dark ? Colors.white : Colors.black),
                    ),
                    const SizedBox(height: rSize.spaceBtwItems),

                    Obx(() {
                      return TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter the Paasssword";
                          }
                          return null;
                        },
                        controller: passwordController,
                        expands: false,


                          obscureText: hidePassword.value,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.padding,
                              color: dark ? Colors.white : Colors.black,
                            ),

                            //toggle value 1st true then false value return
                            suffixIcon: IconButton(onPressed: () =>
                            hidePassword.value =!
                                hidePassword.value,
                              icon: hidePassword.value ? Icon(
                                Icons.remove_red_eye,
                                color: dark ? Colors.white : Colors.black,
                              ) : Icon(
                                Icons.remove_done,
                                color: dark ? Colors.white : Colors.black,
                              ),),
                            labelText: "Password",

                            labelStyle:
                            TextStyle(
                                color: dark ? Colors.white : Colors.black)),
                        style: TextStyle(color: dark ? Colors.white : Colors
                            .black),
                      );
                    })

                  ],
                ),
              ),

              SizedBox(height: rSize.spaceBtwSections),

              Container(

                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: signUpUser,


                      // print("clicked");
                      // if (!signupFormKey.currentState!.validate()) {
                      //   print("-----------freed----");
                      //   setState(() {
                      //     email = emailController.text;
                      //     firstName = firstNameController.text;
                      //     lastName = lastNameController.text;
                      //     userName = userNameController.text;
                      //     phoneNumber = phoneNumberController.text;
                      //     password = passwordController.text;
                      //   });
                      //   registration();
                      // }

                      child: Text("Sign Up"))),
              SizedBox(height: rSize.spaceBtwItems),

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
              const SizedBox(height: rSize.spaceBtwSections),
              tSocialButton(dark: dark),
            ],
          ),
        ),
      ),
    );
  }
}
