import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme.dart';

class InvoicePageView extends GetView {
  const InvoicePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                      "Invoice",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: medium,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                width: Get.width,
                height: 61,
                color: Color(0xffF4F4F4),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Time Left",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "00:04:51",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffF63535),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Container(
                      width: Get.width,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          topRight: Radius.circular(7),
                        ),
                        border: Border.all(color: orangeColor),
                        color: Color(0xffD9D9D9),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order ID",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "ID0231Q11829POBOX",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: Get.width,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(7),
                          bottomRight: Radius.circular(7),
                        ),
                        border: Border.all(
                          color: orangeColor,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Total Payment",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Rp. 3.600.000",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: orangeColor,
                                    fontWeight: bold,
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              "assets/icons/Back.png",
                              width: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Divider(
                color: Color(
                  0xffD9D9D9,
                ),
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment Method",
                      style: TextStyle(
                        fontWeight: bold,
                        fontSize: 18,
                        color: Color(0xff776D6D),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "e-Wallet",
                      style: TextStyle(color: Color(0xff776D6D), fontSize: 16),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    itemLayanan(
                      logo: "assets/logos/pospay.png",
                      nama: "Pospay",
                      promo: "(Casback 10%)",
                      button: "assets/icons/buttonPutih.png",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    itemLayanan(
                      logo: "assets/logos/gopay.png",
                      nama: "Gopay",
                      promo: "",
                      button: "assets/icons/buttonPutih.png",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    itemLayanan(
                      logo: "assets/logos/qris.png",
                      nama: "QRIS",
                      promo: "",
                      button: "assets/icons/buttonIsi.png",
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Text(
                      "ATM & Internet Banking",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff776D6D),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    itemLayanan(
                        logo: "assets/logos/bca_va.png",
                        nama: "BCA Virtual Account",
                        promo: "",
                        button: "assets/icons/buttonPutih.png"),
                    SizedBox(
                      height: 20,
                    ),
                    itemLayanan(
                        logo: "assets/logos/bni_va.png",
                        nama: "BNI Virtual Account",
                        promo: "",
                        button: "assets/icons/buttonPutih.png"),
                    SizedBox(
                      height: 20,
                    ),
                    itemLayanan(
                        logo: "assets/logos/mandiri_va.png",
                        nama: "Mandiri Virtual Account",
                        promo: "",
                        button: "assets/icons/buttonPutih.png"),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {},
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
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class itemLayanan extends StatelessWidget {
  final String logo;
  final String nama;
  final String? promo;
  final String button;
  itemLayanan(
      {required this.logo,
      required this.nama,
      this.promo,
      required this.button});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          logo,
          width: 64,
          height: 30,
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
            child: Text(
          nama,
          style: TextStyle(fontWeight: bold, fontSize: 17),
        )),
        Text(promo!),
        SizedBox(
          width: 100,
        ),
        Image.asset(
          button,
          width: 18,
        )
      ],
    );
  }
}
