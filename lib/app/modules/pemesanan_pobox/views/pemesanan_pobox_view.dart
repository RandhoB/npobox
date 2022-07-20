import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pemesanan_pobox_controller.dart';

class PemesananPoboxView extends GetView<PemesananPoboxController> {
  const PemesananPoboxView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PemesananPoboxView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PemesananPoboxView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
