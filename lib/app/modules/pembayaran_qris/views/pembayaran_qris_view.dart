import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pembayaran_qris_controller.dart';

class PembayaranQrisView extends GetView<PembayaranQrisController> {
  const PembayaranQrisView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PembayaranQrisView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PembayaranQrisView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
