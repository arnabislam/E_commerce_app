import 'package:e_commerce/app/data/repositories/authentication/authentication_repositories.dart';
import 'package:e_commerce/binding/general_binding.dart';
import 'package:e_commerce/constant/colors.dart';
import 'package:e_commerce/utils/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/modules/brand/views/brand_view.dart';
import 'app/routes/app_pages.dart';
import 'firebase_options.dart';

Future<void> main() async {
  /// entry point of flutter app

  /// ADD WIDGET BINDING
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  ///getx storage initialize

  await GetStorage.init();

  /// await until others items load

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  ///initialize firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (FirebaseApp value) => Get.put(AuthenticationRepositories()),
  );

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: rAppTheme.lightTheme,
      darkTheme: rAppTheme.darkTheme,
      initialBinding: GeneralBinding(),
      title: "Application",
      // initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      home: Scaffold(
        backgroundColor: rColors.primary,
        body: const Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
