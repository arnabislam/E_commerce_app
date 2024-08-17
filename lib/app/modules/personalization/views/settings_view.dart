import 'package:e_commerce/app/data/repositories/authentication/authentication_demo.dart';
import 'package:e_commerce/app/modules/address/views/address_view.dart';
import 'package:e_commerce/app/modules/auth/views/login.dart';
import 'package:e_commerce/app/modules/home/views/home_view.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/primaryHeader.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/r_circular_image.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/section_heading.dart';
import 'package:e_commerce/app/modules/order/views/order_view.dart';
import 'package:e_commerce/app/modules/personalization/views/profile_view.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/appbar.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../onboardimg/views/widgets/customShape/r_settings_menu_tile.dart';
import '../../onboardimg/views/widgets/customShape/r_user_profile_tile.dart';

class SettingsView extends GetView {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          rPrimaryContainer(
              child: Column(
            children: [
              rAppBar(
                title: Text(
                  "Account",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.apply(color: Colors.white),
                ),
                showBackArrow: true,
              ),
              const SizedBox(
                height: rSize.spaceBtwItems,
              ),
              rUserProfileTile(dark: dark,onPressed: (){
                Get.to(ProfileView());
              },),
              SizedBox(height: rSize.spaceBtwSections,)
            ],
          )),
          Padding(
            padding: EdgeInsets.all(rSize.defaultSpace),
            child: Column(
              children: [
                const rSectionHeading(
                  title: "Account Settings",
                  showActionbutton: false,
                ),
                const SizedBox(
                  height: rSize.spaceBtwSections,
                ),

                //account settings
                 rSettingsmenuTile(
                  icon: Icons.home_outlined,
                  title: 'My Address',
                  subtitle: 'Set shopping delivery address',
                  onTap: (){
                    Get.to(AddressView());
                  },
                ),
                const rSettingsmenuTile(
                  icon: Icons.shopping_cart,
                  title: 'My Cart',
                  subtitle: 'Add remove products,add move to check',
                ),
                 rSettingsmenuTile(
                  onTap: (){Get.to(OrderView());},
                  icon: Icons.delete_outline_outlined,
                  title: 'My Orders',
                  subtitle: 'In progress and Completed orders',
                ),
                const rSettingsmenuTile(
                  icon: Icons.food_bank_outlined,
                  title: 'Bank Account',
                  subtitle: 'Withdraw balance and regitered bank account',
                ),
                const rSettingsmenuTile(
                  icon: Icons.settings_brightness,
                  title: 'My Coupons',
                  subtitle: 'List of all discount coupons',
                ),
                const rSettingsmenuTile(
                  icon: Icons.notification_important,
                  title: 'Notifications',
                  subtitle: 'Set any kinds of notifications message',
                ),
                const rSettingsmenuTile(
                  icon: Icons.security,
                  title: 'Account privacy',
                  subtitle: 'Manage data usages and connected accounts',
                ),
//app settings
                const SizedBox(
                  height: rSize.spaceBtwSections,
                ),
                const rSectionHeading(
                  title: "Accounrt Settings",
                  showActionbutton: false,
                ),
                const SizedBox(
                  height: rSize.spaceBtwItems,
                ),

                rSettingsmenuTile(
                  icon: Icons.dataset_linked,
                  title: 'Load data',
                  subtitle: 'Upload data to your cloud firebase',
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),
                rSettingsmenuTile(
                  icon: Icons.location_on_outlined,
                  title: 'Safe mode',
                  subtitle: 'Search result is safe for all ages',
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),
                rSettingsmenuTile(
                  icon: Icons.security,
                  title: 'Hd image Quality',
                  subtitle: 'Set image quality to be seen',
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),

                 rSettingsmenuTile(
                  icon: Icons.logout,
                  title: 'Log Out',
                  subtitle: 'you will go  login page',
                  onTap: ()async{
                  await  AuthenticationDemo().signOut();
                    Get.to(Login());
                  },
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
