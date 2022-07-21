import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:npobox/app/modules/login_page/controllers/login_page_controller.dart';
import 'package:npobox/app/routes/app_pages.dart';
import 'package:npobox/theme.dart';

import '../../../../widgets/otpAngka.dart';
import '../../../../widgets/otpAngkaKosong.dart';
import '../../../../widgets/otpItem.dart';
import '../../../../widgets/otpSimbol.dart';

class EnterPinView extends GetView<LoginPageController> {
  // final int numberClick;
  // EnterPinView({required this.numberClick});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Enter PIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff776D6D),
                      fontSize: 16),
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  "assets/image_key.png",
                  width: 109,
                  height: 124,
                ),
                SizedBox(
                  height: 22,
                ),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ...controller
                          .getAllCode(), // spread collection (titik 3),
                    ],
                  ),
                ),

                SizedBox(
                  height: 22,
                ),
                GestureDetector(
                  onTap: () {
                    Get.offAllNamed(Routes.HOME);
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
                SizedBox(height: 38),
                // BUTTON
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OtpAngka(number: 1),
                        OtpAngka(number: 2),
                        OtpAngka(number: 3),
                      ],
                    ),
                    SizedBox(height: 26),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OtpAngka(number: 4),
                        OtpAngka(number: 5),
                        OtpAngka(number: 6),
                      ],
                    ),
                    SizedBox(height: 26),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OtpAngka(number: 7),
                        OtpAngka(number: 8),
                        OtpAngka(number: 9),
                      ],
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
                      number: "",
                    ),
                    OtpAngka(number: 0),
                    OtpSimbol(),
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
