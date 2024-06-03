import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/utils/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {

  
  runApp(


    GetMaterialApp(
     themeMode: ThemeMode.system,
      theme: rAppTheme.lightTheme,
      darkTheme: rAppTheme.darkTheme,

      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
