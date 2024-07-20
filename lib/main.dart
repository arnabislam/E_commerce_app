import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/utils/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/modules/brand/views/brand_view.dart';
import 'app/routes/app_pages.dart';
import 'firebase_options.dart';

Future<void> main() async {
///initialize firebase
  ///
  await Firebase.initializeApp(

      options: DefaultFirebaseOptions.currentPlatform).then ((FirebaseApp value)=>Get.put (BrandView()),

  );

  
  runApp(


    GetMaterialApp(
      debugShowCheckedModeBanner: false,
     themeMode: ThemeMode.system,
      theme: rAppTheme.lightTheme,
      darkTheme: rAppTheme.darkTheme,

      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
