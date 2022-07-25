import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:npobox/app/routes/app_pages.dart';
import 'package:npobox/theme.dart';

import '../controllers/pemesanan_pobox_controller.dart';

class PemesananPoboxView extends GetView<PemesananPoboxController> {
  final control = Get.find<PemesananPoboxController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
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
              SizedBox(
                height: 25,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: medium,
                    color: Color(0xff585252),
                  ),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      top: 15,
                      left: 15,
                    ),
                    suffixIcon: IconButton(
                      icon: Image.asset(
                        "assets/icons/search.png",
                        width: 20,
                      ),
                      onPressed: null,
                    ),
                    filled: true,
                    fillColor: Color(0xffFCE7E7),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: "Alamat Tujuan",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    itemSearch(warna: Color(0xffFFA67D), nama: "Jakarta"),
                    SizedBox(
                      width: 6,
                    ),
                    itemSearch(warna: Color(0xffFFFFFF), nama: "Bandung"),
                    SizedBox(
                      width: 6,
                    ),
                    itemSearch(warna: Color(0xffFFFFFF), nama: "Surabaya"),
                    SizedBox(
                      width: 6,
                    ),
                    itemSearch(warna: Color(0xffFFFFFF), nama: "Madura"),
                    SizedBox(
                      width: 6,
                    ),
                    itemSearch(warna: Color(0xffFFFFFF), nama: "Pontianak"),
                    SizedBox(
                      width: 6,
                    ),
                    itemSearch(warna: Color(0xffFFFFFF), nama: "Malang"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //dari sini harusnya keluar jika user memilih alamat !!!
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Result",
                    style: TextStyle(fontSize: 15, fontWeight: medium),
                  ),
                  Text(
                    "1 Found",
                    style: TextStyle(fontSize: 13, fontWeight: regular),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 164,
                width: Get.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffF37135),
                  ),
                ),
                child: Image.asset(
                  "assets/images/map.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 93,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Color(0xffFBE1E1),
                  border: Border.all(
                    color: Color(0xffF37135),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Gedung Pos Ibukota",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Jl. Gedung Kesenian No.3, Ps. Baru, Kecamatan Sawah Besar, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10710",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: light,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.CHOOSE_POBOX);
                },
                child: Container(
                  height: 50,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                    ),
                    color: orangeColor,
                  ),
                  child: Center(
                    child: Text(
                      "Check Now",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: medium,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

class itemSearch extends StatelessWidget {
  final Color warna;
  final String nama;
  itemSearch({required this.warna, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78,
      height: 27,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Color(0xffAA8B8B),
        ),
        color: warna,
      ),
      child: Center(
        child: Text(
          nama,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            fontWeight: medium,
            color: Color(0xff585252),
          ),
        ),
      ),
    );
  }
}
