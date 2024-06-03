import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';


//for splash screen
//run trhis command     " flutter pub run flutter_native_splash:create --path=splash.yaml"
//remove solash   "flutter pub run flutter _native_splash remove"

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/ui_design.jpg"),
          Image.asset("assets/logos/e_logo.png"),

        ],
      ),
    );
  }
}
