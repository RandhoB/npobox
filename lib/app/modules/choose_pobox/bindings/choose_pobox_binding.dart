import 'package:get/get.dart';

import '../controllers/choose_pobox_controller.dart';

class ChoosePoboxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChoosePoboxController>(
      () => ChoosePoboxController(),
    );
  }
}
