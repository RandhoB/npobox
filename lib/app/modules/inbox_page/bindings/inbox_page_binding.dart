import 'package:get/get.dart';

import '../controllers/inbox_page_controller.dart';

class InboxPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InboxPageController>(
      () => InboxPageController(),
    );
  }
}
