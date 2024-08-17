import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthenticationDemo{

  final FirebaseFirestore _firestore=FirebaseFirestore.instance;

  final FirebaseAuth _auth=FirebaseAuth.instance;


  ///for signup
  Future<String>signUpUser(
      {required String email,
        required String password,required String firstName,required String lastname,required String userName,
        required String phoneNumber
      }
      )async{
    String res='Some error ocured';
    try{

      if (email.isNotEmpty || password.isNotEmpty || firstName.isNotEmpty || lastname.isNotEmpty || userName.isNotEmpty || phoneNumber.isNotEmpty ){
        ///for register user in firebase auth with email and password
        UserCredential credential =await _auth.createUserWithEmailAndPassword(email: email, password: password);

        ///for adding user to our cloud storage
        await _firestore.collection('users').doc(credential.user!.uid).set({'firstName':firstName,'lastName':lastname,

          'email':email,'userName':userName,'phoneNumber':phoneNumber,'uid':credential.user!.uid
        });
        res ="Successfully";
      }


    }catch(e){
     return e.toString();
    }
    return res;
  }


  //for login

  Future<String>loginUser(
      {
        required String email,
        required String password,
      }
      )async {
    String res='Some error ocured';
    try {
      if(email.isNotEmpty || password.isNotEmpty){
        ///login user with email & password

    await _auth.signInWithEmailAndPassword(email: email, password: password);
    res ="Successfully";
  }else{
        res='Please enter all the field';
      }
    }catch(e){
      return e.toString();
    }
    return res;
  }

  Future<void>signOut()async{
    await _auth.signOut();
  }

}


