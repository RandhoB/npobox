import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:npobox/app/modules/login_page/controllers/login_page_controller.dart';
import '../../../../widgets/otpAngka.dart';
import '../../../../widgets/otpAngkaKosong.dart';
import '../../../../widgets/otpItem.dart';
import '../../../../widgets/otpSimbol.dart';

import 'package:get/get.dart';
import 'package:npobox/app/modules/login_page/views/create_pin_view.dart';
import 'package:npobox/app/modules/login_page/views/enter_pin_view.dart';
import 'package:npobox/theme.dart';

class OtpPageView extends GetView {
  // final otpC = Get.find<LoginPageController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 55, right: 55),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Verify Phone",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff776D6D),
                      fontSize: 16),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Code has sent to +6287881188102",
                  style: TextStyle(color: Color(0xff776D6D), fontSize: 14),
                ),
                SizedBox(
                  height: 22,
                ),
                Image.asset(
                  "assets/image_verify.png",
                  width: 77,
                  height: 74,
                ),
                SizedBox(
                  height: 22,
                ),
                Form(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OtpItem(),
                    OtpItem(),
                    OtpItem(),
                    OtpItem(),
                    OtpItem(),
                  ],
                )),
                SizedBox(
                  height: 22,
                ),
                Text("Haven't receive the verification code"),
                GestureDetector(
                  onTap: () {
                    Get.to(EnterPinView());
                  },
                  child: Text(
                    "Resend",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(CreatePinView());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: orangeColor),
                    child: Center(
                      child: Text(
                        "Verify",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 38,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OtpAngka(
                      Pelengkap: "1",
                    ),
                    OtpAngka(
                      Pelengkap: "2",
                    ),
                    OtpAngka(
                      Pelengkap: "3",
                    ),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OtpAngka(
                      Pelengkap: "4",
                    ),
                    OtpAngka(
                      Pelengkap: "5",
                    ),
                    OtpAngka(
                      Pelengkap: "6",
                    ),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OtpAngka(
                      Pelengkap: "7",
                    ),
                    OtpAngka(
                      Pelengkap: "8",
                    ),
                    OtpAngka(
                      Pelengkap: "9",
                    ),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OtpAngkaKosong(
                      Pelengkap: "",
                    ),
                    OtpAngka(
                      Pelengkap: "0",
                    ),
                    OtpSimbol(
                      Pelengkap: "assets/Back.png",
                    ),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
