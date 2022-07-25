import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:npobox/app/modules/choose_pobox/views/pemesanan_enterprise_view.dart';
import 'package:npobox/app/modules/choose_pobox/views/pemesanan_reguler_view.dart';

import '../../../../theme.dart';
import '../controllers/choose_pobox_controller.dart';

class ChoosePoboxView extends GetView<ChoosePoboxController> {
  const ChoosePoboxView({Key? key}) : super(key: key);
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
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      "Post Office Box - ",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Enterprise",
                      style: TextStyle(fontSize: 18, fontWeight: medium),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                itemMenu(
                  warnaMenu: Color(0xffF7A37C),
                  foto: "assets/icons/mail_medal.png",
                  namaMenu: "Hanya  150K-an/Bulan",
                  detailMenu:
                      "\1. Exclusive Customer Service 24/7\n\2. Custom Name PO Box\n\3. Notification receive mail/pos\n\4. Scan and Forward Doc\n\5. Online Payment(e-wallet, QRIS, etc\n\6. History Order",
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(PemesananEnterpriseView());
                  },
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 112,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(7),
                          bottomRight: Radius.circular(7),
                        ),
                        border: Border.all(
                          width: 2,
                          color: Color(0xffF7A37C),
                        ),
                        color: Colors.white60,
                      ),
                      child: Center(
                        child: Text(
                          "Rent Now",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, fontWeight: medium),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      "Post Office Box - ",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Reguler",
                      style: TextStyle(fontSize: 18, fontWeight: medium),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                itemMenu(
                  namaMenu: "Hanya  20K-an/Bulan",
                  detailMenu:
                      "\1. Online Payment/Entend with apps\n\2. History Order",
                  foto: "assets/icons/mail.png",
                  warnaMenu: Color(0xff467E8D),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(PemesananRegulerView());
                  },
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 112,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(7),
                          bottomRight: Radius.circular(7),
                        ),
                        border: Border.all(
                          width: 2,
                          color: Color(0xff467E8D),
                        ),
                        color: Colors.white60,
                      ),
                      child: Center(
                        child: Text(
                          "Rent Now",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, fontWeight: medium),
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

class itemMenu extends StatelessWidget {
  final String? namaMenu;
  final String? detailMenu;
  final String? foto;
  final Color? warnaMenu;

  itemMenu({this.namaMenu, this.foto, this.detailMenu, this.warnaMenu});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(0),
        ),
        color: warnaMenu,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: Get.width * 0.5,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(70),
                  bottomRight: Radius.circular(70),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  namaMenu!,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontWeight: medium),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Image.asset(
                foto!,
                width: 96,
                height: 79,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                detailMenu!,
                style: TextStyle(color: Colors.white, fontWeight: bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
