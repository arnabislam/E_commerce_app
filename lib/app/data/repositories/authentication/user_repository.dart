import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController{
  static UserRepository get instance=>Get.find();


  final FirebaseFirestore _db= FirebaseFirestore.instance;



  /// Function to save User Data to firestore

// Future<void> saveUserRecord(UserModel user)async{
//   try{
//     await _db.collection("Users").doc(user.id).set(user.toJson());
//   }on FirebaseAuthException catch (e){
//     throw "something went wrong please try again";
//   }
// }
}