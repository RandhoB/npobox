import 'package:get/get.dart';
import 'package:npobox/app/modules/login_page/providers/check_user_provider.dart';

import '../controllers/login_page_controller.dart';

class LoginPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckUserProvider>(
        () => CheckUserProvider(Get.find<GetConnect>()));
    Get.lazyPut<LoginPageController>(
      () => LoginPageController(Get.find<CheckUserProvider>()),
    );
    Get.lazyPut<LoginPageController>(
      () => LoginPageController(Get.find<CheckUserProvider>()),
    );
  }
}
