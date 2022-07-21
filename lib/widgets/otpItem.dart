import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:npobox/theme.dart';

import '../app/modules/login_page/controllers/login_page_controller.dart';

class OtpItem extends StatelessWidget {
  // final otpC = Get.find<LoginPageController>();
  OtpItem({this.data});
  final int? data;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 47,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Color(0xffEBE4E1),
      ),
      child: Center(
        child: Text(
          data?.toString() ?? "",
          style: TextStyle(
            fontSize: 25,
            color: orangeColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
