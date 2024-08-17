import 'package:e_commerce/app/modules/auth/views/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../modules/onboardimg/views/onboardimg_view.dart';

class AuthenticationRepositories extends GetxController {
  static AuthenticationRepositories get instance => Get.find();

  //veriable

  final deviceStorage = GetStorage();
  final _auth=FirebaseAuth.instance;

  @override
  void onReady() {

    //remove native splash screen
    FlutterNativeSplash.remove();

    //redirect to the appropriate screen
    screenRedirect();
  }

  //function to show relavant screen

  screenRedirect() async {
    if (kDebugMode) {
      print("Bangladesh  auth");
      print(deviceStorage.read("IsFirstTime"));
    }

    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(Login())
        : Get.offAll(OnboardimgView());
  }
/*................................Email and password  sign in.....................................*/

  //signin[email autheentication]

//register[email autheentication]
Future<UserCredential>registerWithEmailAndPassword(String email,String password)async{
  try{
    return await _auth.createUserWithEmailAndPassword(email: email, password: password);

  }catch(e){
    throw 'Something went wrong please try again';
  }
}


}
