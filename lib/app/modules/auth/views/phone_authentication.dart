import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'otp_Screen.dart';

class PhoneAuthentication extends StatefulWidget {
  const PhoneAuthentication({super.key});

  @override
  State<PhoneAuthentication> createState() => _PhoneAuthenticationState();
}

class _PhoneAuthenticationState extends State<PhoneAuthentication> {
  TextEditingController phoneContorller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone number authenticate"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: phoneContorller,

              decoration: InputDecoration(
                  hintText: 'Enter Phone Number',
                  suffixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  )),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(

                onPressed: () async {
                  await FirebaseAuth.instance.verifyPhoneNumber(
                      verificationCompleted: (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException ex) {},
                      codeSent: (String verificationid, int? resendtoken) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OtpScreen(
                                      verificationid: verificationid,
                                    )));
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                      phoneNumber: phoneContorller.text.toString());
                },
                child: const Text("verify phone")),
          )
        ],
      ),
    );
  }
}
