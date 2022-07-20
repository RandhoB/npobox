import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/modules/login_page/controllers/login_page_controller.dart';
import '../theme.dart';

class OtpAngka extends StatelessWidget {
  // final otpC = Get.find<LoginPageController>();
  OtpAngka({
    required this.Pelengkap,
  });

  final String Pelengkap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35), color: buttonotpColor),
        child: Center(
          child: Text(
            Pelengkap,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: orangeColor,
            ),
          ),
        ),
      ),
    );
  }
}
