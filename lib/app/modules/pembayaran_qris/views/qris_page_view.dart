import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:npobox/app/modules/pembayaran_qris/views/invoice_page_view.dart';

import '../../../../theme.dart';

class QrisPageView extends GetView {
  const QrisPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      "Payment QRIS",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: medium,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Image.asset(
                  "assets/images/qris.png",
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Cara pembayaran QRIS",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\1. Scan/screenshot kode QR yang tampil di layar dengan aplikasi BCA Mobile, GoPay, OVO, DANA, Home Credit Indonesia, atau aplikasi pembayaran lain yang mendukung QRIS.\n \n\2. Periksa detail transaksi kamu pada aplikasi, lalu klik tombol Bayar.\n \n\3. Masukan PIN kamu.\n \n\4. Setelah transaksi kamu selesai, unggah bukti transfer lalu klik “CONFIRM”",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      width: Get.width * 0.7,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                          color: orangeColor,
                          width: 3,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Upload Bukti Pembayaran",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: bold,
                            color: orangeColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(InvoicePageView());
                  },
                  child: Center(
                    child: Container(
                      width: Get.width * 0.7,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: orangeColor,
                      ),
                      child: Center(
                        child: Text(
                          "CONFIRM",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
