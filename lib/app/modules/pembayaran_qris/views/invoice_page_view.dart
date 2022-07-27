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
                        "Order Status",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Completed",
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
                      "RENT INFO",
                      style: TextStyle(
                        fontWeight: bold,
                        fontSize: 15,
                        color: orangeColor,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    itemRent(
                      nama: "Cost PO Box Enterprise",
                      tahun: "1 Tahun",
                      rupiah: "Rp. 2.000.000",
                    ),
                    SizedBox(height: 6),
                    Divider(
                      color: Color(0xffB1A0A0),
                      height: 2,
                      thickness: 1,
                    ),
                    itemRent(
                      nama: "Addons Terima Barang",
                      tahun: "1 Tahun",
                      rupiah: "Rp. 1.000.000",
                    ),
                    SizedBox(height: 6),
                    Divider(
                      color: Color(0xffB1A0A0),
                      height: 2,
                      thickness: 1,
                    ),
                    itemRent(
                      nama: "Paket Free Forwarding",
                      tahun: "1 Tahun",
                      rupiah: "Rp. 600.000",
                    ),
                    SizedBox(height: 6),
                    Divider(
                      color: Color(0xffB1A0A0),
                      height: 2,
                      thickness: 1,
                    ),
                    itemRent(
                      nama: "Pengiriman dan Biaya Kunci",
                      tahun: "",
                      rupiah: "Rp. 50.000",
                    ),
                    SizedBox(height: 6),
                    Divider(
                      color: Color(0xffB1A0A0),
                      height: 2,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Payment",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: bold,
                          ),
                        ),
                        Text(
                          "Rp. 3.650.000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Payment Method",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff545250),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          "assets/logos/qris.png",
                          width: 44,
                          height: 16,
                        )
                      ],
                    ),
                    Text(
                      "*Resi pengiriman kunci akan di infokan via chat WA",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color(0xff545250),
                      ),
                    ),
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class itemRent extends StatelessWidget {
  final String nama;
  final String rupiah;
  final String? tahun;

  itemRent({required this.nama, required this.rupiah, this.tahun});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 6,
            ),
            Text(
              nama,
              style: TextStyle(
                fontSize: 15,
                color: Color(0xff545250),
              ),
            ),
            Text(
              tahun!,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Color(0xff545250),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 6,
            ),
            Text(
              rupiah,
              style: TextStyle(
                fontSize: 15,
                fontWeight: bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}
