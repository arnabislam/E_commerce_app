import 'package:e_commerce/app/modules/home/views/home_view.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/wishlist.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../store/views/store_view.dart';

class NavigationMenuView extends GetView {
  const NavigationMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
final darkmode=TheHelperFunctions.isDarkMode(BuildContext, context);
    return Scaffold(


      bottomNavigationBar: Obx(() {
        return NavigationBar(
            height: 80,
            selectedIndex: controller.selectedIndex.value,
            elevation: 0,
            backgroundColor: darkmode?Colors.black:Colors.white,
            indicatorColor: darkmode?Colors.white.withOpacity(0.1):Colors.black.withOpacity(0.1),
            onDestinationSelected: (index) =>
            controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(icon: Icon(Icons.shop), label: "Store"),
              NavigationDestination(
                  icon: Icon(Icons.heart_broken_outlined), label: "wishlist"),
              NavigationDestination(
                  icon: Icon(Icons.person_pin), label: "Profile"),
            ]);
      }),
      body: Obx(()=>controller.screens[controller.selectedIndex.value])
    );
  }
}


class NavigationController extends GetxController {
  final Rx<int>selectedIndex = 0.obs;

  final screens = [
   HomeView(),
    StoreView(),
    Wishlist(),
    Container(color: Colors.yellow,),
  ];
}