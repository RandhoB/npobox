import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/otp_page_controller.dart';

class OtpPageView extends GetView<OtpPageController> {
  const OtpPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OtpPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OtpPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
