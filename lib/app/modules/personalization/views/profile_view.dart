import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/r_circular_image.dart';
import 'package:e_commerce/app/modules/onboardimg/views/widgets/customShape/section_heading.dart';
import 'package:e_commerce/app/modules/personalization/views/r_profile_menu.dart';
import 'package:e_commerce/device/helper_function.dart';
import 'package:e_commerce/utils/appbar.dart';
import 'package:e_commerce/utils/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProfileView extends GetView {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(BuildContext, context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.apply(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(rSize.defaultSpace),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Column(
                    children: [
                      rCircularImage(
                          dark: dark, image: "assets/images/profile.png"),
                      TextButton(
                          onPressed: () {},
                          child: Text("Change Profile Picture")),
                    ],
                  )
                ],
              ),
            ),
            //Details

            SizedBox(
              height: rSize.spaceBtwItems / 2,
            ),

            Divider(),
            const SizedBox(
              height: rSize.spaceBtwItems,
            ),
            const rSectionHeading(
              title: "Profile Information",
              showActionbutton: false,
            ),
            const SizedBox(
              height: rSize.spaceBtwItems,
            ),
            rProfileMenu(
              onPressed: () {},
              title: "Name",
              value: "Coding with T",
            ),
            rProfileMenu(
              onPressed: () {},
              title: "UserName",
              value: "Coding_with_T",
            ),

            SizedBox(
              height: rSize.spaceBtwItems,
            ),
            Divider(),
            SizedBox(
              height: rSize.spaceBtwItems,
            ),
            rSectionHeading(title: "Personal Information"),
            SizedBox(
              height: rSize.spaceBtwItems,
            ),

            rProfileMenu(
              onPressed: () {},
              title: "User ID",
              value: "4525623",
              icon: Icons.copy,
            ),
            rProfileMenu(
                onPressed: () {},
                title: "E-Mail",
                value: "arnabr131@gmail.com"),
            rProfileMenu(
                onPressed: () {}, title: "Phone Number", value: "0164525623"),
            rProfileMenu(onPressed: () {}, title: "Gender", value: "Male"),
            rProfileMenu(
                onPressed: () {}, title: "Date of birth", value: "25/12/1999"),
            rProfileMenu(
                onPressed: () {}, title: "Nationality", value: "Bangladeshi"),
            Divider(),
            SizedBox(
              height: rSize.spaceBtwItems,
            ),

            Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Close Account ",
                      style: TextStyle(color: Colors.red),
                    )))
          ],
        ),
      )),
    );
  }
}
