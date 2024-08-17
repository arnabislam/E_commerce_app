import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/app/data/repositories/authentication/authentication_repositories.dart';
import 'package:e_commerce/app/data/repositories/authentication/user_repository.dart';
import 'package:e_commerce/app/modules/auth/views/success_screenl_view.dart';
import 'package:e_commerce/app/modules/auth/views/verify_email_view.dart';
import 'package:e_commerce/app/modules/shop/cart.dart';
import 'package:e_commerce/constant/imageString.dart';
import 'package:e_commerce/loader/fullscreenloader.dart';
import 'package:e_commerce/loader/loader.dart';
import 'package:e_commerce/loader/network_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/phone_authentication.dart';

class SignupController extends GetxController {
 // static SignupController get instance => Get.find();


  //String email='',password='',firstName='',lastName='',userName='',phoneNumber='';

  /// variables
  final privacyPolicy = true.obs;
  final hidePassword = true.obs; //obserbale and hide /showing password
  // final email = TextEditingController();
  // final firstName = TextEditingController();
  // final lastName = TextEditingController();
  // final userName = TextEditingController();
  // final phoneNumber = TextEditingController();
  // final password = TextEditingController();



  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); //form key for validation

  // addData(){
  //   FirebaseFirestore.instance.collection("frick").add
  //     ({
  //     "name":userName,
  //     });
  // }

  /// signup
  Future<void> signup() async {
    try {
      //start loading
      rFullScreenLoader.openLoadingDialog(
          "We Are Processing your informatiom...", rImageString.productImage1);

      print("saiful");
      // //check internet connection

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }
      //from validity

      if (!signupFormKey.currentState!.validate()) {
        return;
      }
      //privacy policy check

      if (!privacyPolicy.value) {
        rLoaders.warningSnackBar(
            title: "Accept privacy policy",
            message:
                "In order to create account you must have to read and accept privacey policy terms and condition");
        return;
      }

      ///register with email

      //register user in the firebase authentication and save user data in the firebase
// final userCredential=await AuthenticationRepositories.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());
//       //save authenticate user data in the firebase firestore
//       final newUser=UserModel(
//         id:userCredential.user?.uid,
//         firstName:firstName.text.trim(),
//         lastName:lastName.text.trim(),
//         userName:userName.text.trim(),
//         phoneNumber:phoneNumber.text.trim(),
//         email:email.text.trim(),
//         profilePicture:'',
//
//       );
      // final userRepository=Get.put(UserRepository());
      //  userRepository.saveUserRecord(user);
      //show success message
      rLoaders.successSnackBar(
          title: "Congratulations",
          message: "Your account have been create successfully");
      //move ton verify email  screen
      //Get.to(SuccessScreenlView());
    } catch (e) {
      rLoaders.errorSnackBar(title: 'no snap!', message: e.toString());
    } finally {
      rFullScreenLoader.stopLoading();
    }

    print("Banglfesh is");
  }
}
