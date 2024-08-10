import 'package:e_commerce/constant/imageString.dart';
import 'package:e_commerce/loader/fullscreenloader.dart';
import 'package:e_commerce/loader/loader.dart';
import 'package:e_commerce/loader/network_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// variables
   final privacyPolicy=true.obs;
  final hidePassword=true.obs;//obserbale and hide /showing password
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); //form key for validation
  /// signup
  Future<void> signup() async {
    try {
      //start loading
      rFullScreenLoader.openLoadingDialog(
          "We Are Processing your informatiom...", rImageString.productImage1);

      //check internet connection

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }
      //from validity

      if (!signupFormKey.currentState!.validate()) {
        return;
      }
      //privacy policy check


      if(!privacyPolicy.value){
        rLoaders.warningSnackBar(title: "Accept privacy policy",message: "In order to create account you must have to read and accept privacey policy terms and condition");
        return;
      }
      //register user in the firebase authentication and save user data in the firebase

      //save authenticate user data in the firebase firestore

      //show success message

      //move ton verify email  screen
    } catch (e) {
      rLoaders.errorSnackBar(title: 'no snap!', message: e.toString());
    } finally {
      rFullScreenLoader.stopLoading();
    }

    print("Banglfesh is");
  }
}
