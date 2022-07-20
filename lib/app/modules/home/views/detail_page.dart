import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:npobox/theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  "Detail PO Box",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: titleColor),
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 149,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(27),
                            color: orangeColor),
                      ),
                      Container(
                        width: 87,
                        height: 29,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xcffD7DFCC),
                        ),
                        child: Center(
                          child: Text(
                            "Active",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4F741E),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 17,
                              ),
                              Image.asset(
                                "assets/icons/mail_medal.png",
                                width: 80,
                                height: 56,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "ID: IDPOBOX0991182",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "PO Box Gedung Pos Ibukota",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "Address: PO Box-Yogi Custom",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: "Expired date\n",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                  children: [
                                TextSpan(
                                  text: "23 December 2023",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ])),
                          SizedBox(
                            height: 225,
                          ),
                          Container(
                            width: 78,
                            height: 29,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                "Billing",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: orangeColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.7,
                    decoration: BoxDecoration(
                      color: Color(0xffF6E5E0),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 40),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                              "History Notification",
                              style: TextStyle(fontWeight: bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            itemHistory(
                              image: "assets/mail-detail.png",
                              judul:
                                  "Notifikasi Surat\nada kiriman 1 surat telah sampai,",
                              date: "arrival date: 27 Juli 2022",
                            ),
                            itemHistory(
                              image: "assets/icons/Product2.png",
                              judul:
                                  "Notifikasi Surat\nada kiriman 1 surat telah sampai",
                              date: "arrival date: 27 Juli 2022",
                            ),
                            itemHistory(
                              image: "assets/mail-detail.png",
                              judul:
                                  "Notifikasi Surat\nada kiriman 1 surat telah sampai",
                              date: "arrival date: 27 Juli 2022",
                            ),
                            itemHistory(
                              image: "assets/icons/Product2.png",
                              judul:
                                  "Notifikasi Surat\nada kiriman 1 surat telah sampai",
                              date: "arrival date: 27 Juli 2022",
                            ),
                            itemHistory(
                              image: "assets/mail-detail.png",
                              judul:
                                  "Notifikasi Surat\nada kiriman 1 surat telah sampai",
                              date: "arrival date: 27 Juli 2022",
                            ),
                            itemHistory2(
                              image: "assets/mail-detail.png",
                              judul:
                                  "Notifikasi Surat\nada kiriman 1 surat telah sampai",
                              date: "arrival date: 27 Juli 2022",
                            ),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class itemHistory extends StatelessWidget {
  final String image;
  final String judul;
  final String date;

  itemHistory({required this.image, required this.judul, required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 51,
            ),
            Container(
              width: 2,
              height: 50,
              color: Colors.black,
            )
          ],
        ),
        SizedBox(
          width: 6,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(judul),
            Text(
              date,
              style: TextStyle(
                  fontStyle: FontStyle.italic, overflow: TextOverflow.ellipsis),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  width: 89,
                  height: 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: orangeColor),
                  child: Center(
                    child: Text(
                      "open & scan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 60,
                  height: 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: orangeColor),
                  child: Center(
                      child: Text(
                    "forward",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  )),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

class itemHistory2 extends StatelessWidget {
  final String image;
  final String judul;
  final String date;

  itemHistory2({required this.image, required this.judul, required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 51,
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
        SizedBox(
          width: 6,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(judul),
            Text(
              date,
              style: TextStyle(
                  fontStyle: FontStyle.italic, overflow: TextOverflow.ellipsis),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  width: 89,
                  height: 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: orangeColor),
                  child: Center(
                    child: Text(
                      "open & scan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 60,
                  height: 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: orangeColor),
                  child: Center(
                      child: Text(
                    "forward",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  )),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
