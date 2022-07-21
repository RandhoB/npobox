import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../app/modules/login_page/controllers/login_page_controller.dart';
import '../theme.dart';

class OtpSimbol extends GetView<LoginPageController> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(35),
      color: buttonotpColor,
      child: InkWell(
        onTap: () {
          if (controller.code.length != 0) {
            controller.code.removeLast();
          }
        },
        child: SizedBox(
          height: 70,
          width: 70,
          child: Center(
              child: Image.asset(
            "assets/icons/Back2.png",
            width: 32,
            height: 32,
          )),
        ),
      ),
    );
  }
}
