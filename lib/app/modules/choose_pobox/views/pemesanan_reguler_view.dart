import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme.dart';

class PemesananRegulerView extends GetView {
  const PemesananRegulerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 30,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        "assets/icons/Back2.png",
                        width: 27,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Post Office Box",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: medium,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
