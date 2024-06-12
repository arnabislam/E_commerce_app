import 'package:get/get.dart';

import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/auth_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboardimg/bindings/onboardimg_binding.dart';
import '../modules/onboardimg/views/onboardimg_view.dart';
import '../modules/store/bindings/store_binding.dart';
import '../modules/store/views/store_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const OnboardimgView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDIMG,
      page: () => const OnboardimgView(),
      binding: OnboardimgBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.STORE,
      page: () => const StoreView(),
      binding: StoreBinding(),
    ),
  ];
}
