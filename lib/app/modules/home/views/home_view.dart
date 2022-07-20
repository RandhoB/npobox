import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:npobox/app/modules/home/views/mypobox_page.dart';

import '../../../../theme.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Boxkoo",
                        style: TextStyle(
                            color: Color(0xff31616D),
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: menuItemLeading(
                              gambar: "assets/icons/Female Profile.png",
                              nama: "Referral",
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: menuItemLeading(
                              gambar: "assets/icons/Medal.png",
                              nama: "My\nRewards",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 57,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: WCoklatMuda),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Remaining Active Balance",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              Text(
                                "RP. 0",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              // Get.toNamed(Routes.TOPUP_PAGE);
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Top up",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                Image.asset(
                                  "assets/icons/Close.png",
                                  width: 50,
                                  height: 50,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                menuStack(
                  warnaBackground: orangeColor,
                  gambar:
                      "assets/images/person deletes letters with a shredder.png",
                  namaJudul: "Make your Virtual Post Office Box",
                  namaButton1: "Rent Now",
                  namaButton2: "My PO Box",
                ),
                menuStack(
                  warnaBackground: WBiruMuda,
                  gambar:
                      "assets/images/Travelling by plane with one suitcase.png",
                  namaJudul: "Create your Deposit Box Now",
                  namaButton1: "Deposit Now",
                  namaButton2: "My Locker",
                ),
                SizedBox(
                  height: 23,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Promo",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff776D6D)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          itemContainer(
                            gambar:
                                "assets/images/Santa is happy about learning the internet.png",
                            teks: "FREEPOBOX",
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          itemContainer(
                            gambar:
                                "assets/images/Man moving boxes in a new house.png",
                            teks: "POSPAY",
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          itemContainer(
                            gambar: "assets/images/A guest from the past.png",
                            teks: "ORANGER",
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          itemContainer(
                            gambar: "assets/images/A guest from the past.png",
                            teks: "ORANGER",
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          itemContainer(
                            gambar: "assets/images/A guest from the past.png",
                            teks: "ORANGER",
                          ),
                          SizedBox(
                            width: 12,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "News",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff776D6D)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          itemContainer(
                            gambar: "assets/images/A guest from the past.png",
                            teks: "Lebih Hemat 30%",
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          itemContainer(
                            gambar:
                                "assets/images/Keep in step with the times.png",
                            teks: "Bisa pakai QRIS",
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          itemContainer(
                            gambar: "assets/images/A guest from the past.png",
                            teks: "Instant Delivery",
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          itemContainer(
                            gambar: "assets/images/A guest from the past.png",
                            teks: "ORANGER",
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          itemContainer(
                            gambar: "assets/images/A guest from the past.png",
                            teks: "ORANGER",
                          ),
                          SizedBox(
                            width: 12,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "#Dudukmanis",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff776D6D)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          itemContainer(
                            gambar:
                                "assets/images/Keep in step with the times.png",
                            teks: "Bisa Official, Cuss",
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          itemContainer(
                            gambar:
                                "assets/images/Man moving boxes in a new house.png",
                            teks: "Kunci Antaran",
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          itemContainer(
                            gambar:
                                "assets/images/Keep in step with the times.png",
                            teks: "Gojek/Grab aja",
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          itemContainer(
                            gambar: "assets/images/A guest from the past.png",
                            teks: "ORANGER",
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          itemContainer(
                            gambar: "assets/images/A guest from the past.png",
                            teks: "ORANGER",
                          ),
                          SizedBox(
                            width: 12,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: orangeColor),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            width: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    itemBottomNavBar(
                      gambar: "assets/icons/home.png",
                      teks: "Home",
                    ),
                    itemBottomNavBar(
                      gambar: "assets/icons/transaction.png",
                      teks: "Transaction",
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    itemBottomNavBar(
                      gambar: "assets/icons/email.png",
                      teks: "Inbox",
                    ),
                    itemBottomNavBar(
                      gambar: "assets/icons/person.png",
                      teks: "Account",
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}

class itemBottomNavBar extends StatelessWidget {
  final String gambar;
  final String teks;
  itemBottomNavBar({required this.gambar, required this.teks});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            gambar,
            width: 30,
            height: 30,
          ),
          Text(
            teks,
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class itemContainer extends StatelessWidget {
  final String gambar;
  final String teks;
  itemContainer({required this.gambar, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          child: Image.asset(
            gambar,
            width: 122,
            height: 69,
          ),
        ),
        Center(
          child: Container(
            width: 122,
            height: 16,
            color: orangeColor,
            child: Text(
              teks,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class menuStack extends StatelessWidget {
  final String namaJudul;
  final String namaButton1;
  final String namaButton2;
  final Color warnaBackground;
  final String gambar;

  menuStack({
    required this.warnaBackground,
    required this.namaJudul,
    required this.gambar,
    required this.namaButton1,
    required this.namaButton2,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 127,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27), color: warnaBackground),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              gambar,
              width: 122,
              height: 156,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                namaJudul,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 83,
                    height: 27,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white),
                    child: Text(
                      namaButton1,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff837169)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(MypoboxPage());
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 83,
                      height: 27,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white),
                      child: Text(
                        namaButton2,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: orangeColor),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class menuItemLeading extends StatelessWidget {
  final String nama;
  final String gambar;

  menuItemLeading({required this.gambar, required this.nama});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 40,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), color: WPink),
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              gambar,
              width: 39,
              height: 39,
            ),
            Center(
              child: Text(
                nama,
                style: TextStyle(fontSize: 10),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
