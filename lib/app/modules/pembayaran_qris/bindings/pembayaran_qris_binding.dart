import 'package:get/get.dart';

import '../controllers/pembayaran_qris_controller.dart';

class PembayaranQrisBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PembayaranQrisController>(
      () => PembayaranQrisController(),
    );
  }
}
