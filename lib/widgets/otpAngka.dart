import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/modules/login_page/controllers/login_page_controller.dart';
import '../theme.dart';

class OtpAngka extends GetView<LoginPageController> {
  const OtpAngka({
    Key? key,
    required this.number,
  }) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(35),
      color: buttonotpColor,
      child: InkWell(
        onTap: () {
          controller.addCode(number);
        },
        child: SizedBox(
          height: 70,
          width: 70,
          child: Center(
            child: Text(
              "$number",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: orangeColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
