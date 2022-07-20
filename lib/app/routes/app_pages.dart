import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/intro_page/bindings/intro_page_binding.dart';
import '../modules/intro_page/views/intro_page_view.dart';
import '../modules/login_page/bindings/login_page_binding.dart';
import '../modules/login_page/views/login_page_view.dart';
import '../modules/pembayaran_qris/bindings/pembayaran_qris_binding.dart';
import '../modules/pembayaran_qris/views/pembayaran_qris_view.dart';
import '../modules/pemesanan_pobox/bindings/pemesanan_pobox_binding.dart';
import '../modules/pemesanan_pobox/views/pemesanan_pobox_view.dart';
import '../modules/profile_page/bindings/profile_page_binding.dart';
import '../modules/profile_page/views/profile_page_view.dart';
import '../modules/splash_page/bindings/splash_page_binding.dart';
import '../modules/splash_page/views/splash_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INTRO_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_PAGE,
      page: () => SplashPageView(),
      binding: SplashPageBinding(),
    ),
    GetPage(
      name: _Paths.PEMESANAN_POBOX,
      page: () => const PemesananPoboxView(),
      binding: PemesananPoboxBinding(),
    ),
    GetPage(
      name: _Paths.PEMBAYARAN_QRIS,
      page: () => const PembayaranQrisView(),
      binding: PembayaranQrisBinding(),
    ),
    GetPage(
      name: _Paths.INTRO_PAGE,
      page: () => IntroPageView(),
      binding: IntroPageBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () => const ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
  ];
}
