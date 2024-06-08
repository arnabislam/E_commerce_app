import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/curved_edges.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/appbar.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../onboardimg/views/widgets/customShape/circular_container.dart';
import '../../onboardimg/views/widgets/customShape/primaryHeader.dart';
import '../../onboardimg/views/widgets/customShape/search_container.dart';
import '../../onboardimg/views/widgets/productscart/cart_menu_icon.dart';
import '../controllers/home_controller.dart';
import 'home_appbar_view.dart';

//for splash screen
//run trhis command     " flutter pub run flutter_native_splash:create --path=splash.yaml"
//remove solash   "flutter pub run flutter _native_splash remove"

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            rPrimaryContainer(
                child: Column(
              children: [
                rHomeAppBar(),
                SizedBox(height: rSize.spaceBtwSections,),
                rSearchContainer(text: 'Seacrh in shop',icon: Icons.search,)
              ],
            ))
          ],
        ),
      ),
    );
  }
}



