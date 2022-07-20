import 'package:get/get.dart';

import '../controllers/pemesanan_pobox_controller.dart';

class PemesananPoboxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PemesananPoboxController>(
      () => PemesananPoboxController(),
    );
  }
}
