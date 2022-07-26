import 'package:get/get.dart';

import '../modules/choose_pobox/bindings/choose_pobox_binding.dart';
import '../modules/choose_pobox/views/choose_pobox_view.dart';
import '../modules/create_pin/bindings/create_pin_binding.dart';
import '../modules/create_pin/views/create_pin_view.dart';
import '../modules/enter_pin/bindings/enter_pin_binding.dart';
import '../modules/enter_pin/views/enter_pin_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/inbox_page/bindings/inbox_page_binding.dart';
import '../modules/inbox_page/views/inbox_page_view.dart';
import '../modules/intro_page/bindings/intro_page_binding.dart';
import '../modules/intro_page/views/intro_page_view.dart';
import '../modules/login_page/bindings/login_page_binding.dart';
import '../modules/login_page/views/login_page_view.dart';
import '../modules/onboarding_page/bindings/onboarding_page_binding.dart';
import '../modules/onboarding_page/views/onboarding_page_view.dart';
import '../modules/otp_page/bindings/otp_page_binding.dart';
import '../modules/otp_page/views/otp_page_view.dart';
import '../modules/pembayaran_qris/bindings/pembayaran_qris_binding.dart';
import '../modules/pembayaran_qris/views/pembayaran_qris_view.dart';
import '../modules/pemesanan_pobox/bindings/pemesanan_pobox_binding.dart';
import '../modules/pemesanan_pobox/views/pemesanan_pobox_view.dart';
import '../modules/profile_page/bindings/profile_page_binding.dart';
import '../modules/profile_page/views/profile_page_view.dart';
import '../modules/splash_page/bindings/splash_page_binding.dart';
import '../modules/splash_page/views/splash_page_view.dart';
import '../modules/transaction_page/bindings/transaction_page_binding.dart';
import '../modules/transaction_page/views/transaction_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.SPLASH_PAGE,
      page: () => SplashPageView(),
      binding: SplashPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.PEMESANAN_POBOX,
      page: () => PemesananPoboxView(),
      binding: PemesananPoboxBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.PEMBAYARAN_QRIS,
      page: () => PembayaranQrisView(),
      binding: PembayaranQrisBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.INTRO_PAGE,
      page: () => IntroPageView(),
      binding: IntroPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () => ProfilePageView(),
      binding: ProfilePageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.TRANSACTION_PAGE,
      page: () => TransactionPageView(),
      binding: TransactionPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.INBOX_PAGE,
      page: () => InboxPageView(),
      binding: InboxPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.ONBOARDING_PAGE,
      page: () => OnboardingPageView(),
      binding: OnboardingPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.CHOOSE_POBOX,
      page: () => ChoosePoboxView(),
      binding: ChoosePoboxBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.OTP_PAGE,
      page: () => const OtpPageView(),
      binding: OtpPageBinding(),
    ),
    GetPage(
      name: _Paths.ENTER_PIN,
      page: () => const EnterPinView(),
      binding: EnterPinBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_PIN,
      page: () => const CreatePinView(),
      binding: CreatePinBinding(),
    ),
  ];
}
