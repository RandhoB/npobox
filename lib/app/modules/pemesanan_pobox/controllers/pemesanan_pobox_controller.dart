import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PemesananPoboxController extends GetxController {
  //TODO: Implement PemesananPoboxController

  late TextEditingController tController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tController.dispose();
  }
}
