import 'package:get/get.dart';

import '../../login_page/controllers/login_page_controller.dart';
import '../../login_page/providers/check_user_provider.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckUserProvider>(
        () => CheckUserProvider(Get.find<GetConnect>()));
    Get.lazyPut<LoginPageController>(
      () => LoginPageController(Get.find<CheckUserProvider>()),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
