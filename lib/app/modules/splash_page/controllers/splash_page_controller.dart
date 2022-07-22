import 'package:get/get.dart';

class SplashPageController extends GetxController {
  //TODO: Implement SplashPageController
  RxInt currentIndex = 0.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
