import 'dart:developer';

import 'package:e_commerce/app/modules/onboardimg/views/onboardimg_view.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/onboarding_navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpScreen extends StatefulWidget {
  String verificationid;
  OtpScreen({super.key, required this.verificationid});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Otp Screen"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              controller: otpController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter Phone Number',
                  suffixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () async {
                try {
                  PhoneAuthCredential credential =
                  await PhoneAuthProvider.credential(
                      verificationId: widget.verificationid,
                      smsCode: otpController.text.toString());

                  FirebaseAuth.instance
                      .signInWithCredential(credential)
                      .then((value) {
                        Get.to(OnboardimgView());
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>
                    //             OnBoardingNavigation(title: 'Myhome Page')));
                  });
                } catch (ex) {
                 // log(ex.toString() as num);
                  log(ex.toString());
                }
              },
              child: Text('Otp Authenticate'))
        ],
      ),
    );
  }
}