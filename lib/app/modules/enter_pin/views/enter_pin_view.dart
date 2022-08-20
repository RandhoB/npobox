import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/enter_pin_controller.dart';

class EnterPinView extends GetView<EnterPinController> {
  const EnterPinView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EnterPinView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'EnterPinView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
