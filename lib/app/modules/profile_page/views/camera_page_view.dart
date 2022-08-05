import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme.dart';

class CameraPageView extends GetView {
  const CameraPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      "assets/icons/Back2.png",
                      width: 26,
                      height: 26,
                    ),
                  ),
                  Image.asset(
                    "assets/icons/flash.png",
                    width: 39,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 162,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    border: Border.all(
                      color: Color(0xffBE9090),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 146,
                decoration:
                    BoxDecoration(border: Border.all(color: Color(0xffB58080))),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Image.asset(
                "assets/icons/camera.png",
                width: 65,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
