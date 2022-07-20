import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:npobox/theme.dart';

import '../../../../widgets/otpAngka.dart';
import '../../../../widgets/otpAngkaKosong.dart';
import '../../../../widgets/otpItem.dart';
import '../../../../widgets/otpSimbol.dart';

class CreatePinView extends GetView {
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
                  "Create PIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff776D6D),
                      fontSize: 16),
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  "assets/image_pin.png",
                  width: 109,
                  height: 124,
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
                GestureDetector(
                  onTap: () {
                    // Get.offAllNamed(Routes.HOME);
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
