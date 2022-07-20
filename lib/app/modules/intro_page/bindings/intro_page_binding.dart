import 'package:get/get.dart';

import '../controllers/intro_page_controller.dart';

class IntroPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroPageController>(
      () => IntroPageController(),
    );
  }
}
