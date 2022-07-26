import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:npobox/app/routes/app_pages.dart';

import '../../../../theme.dart';

class PemesananEnterpriseView extends GetView {
  const PemesananEnterpriseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  right: 25,
                  left: 25,
                ),
                child: Row(
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
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Details Info",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: medium,
                    color: Color(0xff3E3A3A),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: Get.width,
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(9),
                      topRight: Radius.circular(9),
                    ),
                    border: Border.all(
                      color: orangeColor,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/User.png",
                          width: 22,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Yogi Putra Pratama",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff5E4236),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: Get.width,
                  height: 34,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      vertical: BorderSide(
                        color: orangeColor,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/Phone.png",
                          width: 22,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "+62 87881188102",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff5E4236),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: Get.width,
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(9),
                      bottomRight: Radius.circular(9),
                    ),
                    border: Border.all(
                      color: orangeColor,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/Box.png",
                          width: 22,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Custom Nama PO Box",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff5E4236),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Delivery Address (Pengiriman Kunci Loker) ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: medium,
                    color: Color(0xff3E3A3A),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: Get.width,
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: orangeColor,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/Address.png",
                          width: 22,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Jl. Sekeloa Tengah no 90 A, Bandung",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff5E4236),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Rental Duration",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: medium,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/button_minus.png",
                      width: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "1",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "assets/icons/button_plus.png",
                      width: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "assets/icons/button_month.png",
                      width: 80,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "assets/icons/button_year.png",
                      width: 80,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              itemMenu(
                nama: "Dapat Menerima Kiriman Barang di PO Box",
                harga: "Rp. 1.000.000",
                button: "assets/icons/button_click_on.png",
              ),
              SizedBox(
                height: 12,
              ),
              itemMenu(
                nama: "Paket Forwarding 10x/Bulan *Pulau Jawa",
                harga: "Rp. 600.000",
                button: "assets/icons/button_click_on.png",
              ),
              SizedBox(
                height: 12,
              ),
              itemMenu(
                nama: "Asuransi Barang di PO Box",
                harga: "Rp. 1.000.000",
                button: "assets/icons/button_click_off.png",
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                  width: Get.width,
                  height: 240,
                  color: Color(0xffF3EEEE),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 18,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: Get.width,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: orangeColor, width: 2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Total Payment ",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      "Rp. 3.600.000",
                                      style: TextStyle(
                                        fontWeight: bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Details",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: bold,
                                    color: orangeColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/button_check.png",
                              width: 24,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Text("I agree "),
                                Text(
                                  "Disclaimer ",
                                  style: TextStyle(
                                    fontWeight: bold,
                                  ),
                                ),
                                Text("to use PO Box agreement."),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.PEMBAYARAN_QRIS);
                          },
                          child: Container(
                            width: Get.width * 0.6,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: orangeColor,
                            ),
                            child: Center(
                              child: Text(
                                "PAY NOW",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class itemMenu extends StatelessWidget {
  final String nama;
  final String harga;
  final String button;

  itemMenu({required this.nama, required this.harga, required this.button});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: Get.width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: orangeColor, width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: TextStyle(
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    harga,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              Image.asset(
                button,
                width: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}
