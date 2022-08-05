import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:npobox/theme.dart';

class ContactUsView extends GetView {
  const ContactUsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 25, right: 25, left: 25, bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        "assets/icons/Back2.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Need help?",
                      style: TextStyle(
                        color: WTextTopUp,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "24/7\nHelp Center",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/images/man-chatting.png",
                      height: MediaQuery.of(context).size.height * 0.23,
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Color(0xffFEDAC9),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 40),
                    child: Column(
                      children: [
                        Text(
                          "Tell us how we can help",
                          style: TextStyle(
                            color: Color(0xff363030),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Center(
                          child: Text(
                            "our crew of superheroes standing by\nfor service and help",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff655E5E)),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        itemCS(
                          nama: "Customer Service 1",
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        itemCS(
                          nama: "Customer Service 2",
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        itemCS(
                          nama: "Customer Service 3",
                        ),
                        SizedBox(
                          height: 53,
                        ),
                        Text(
                          "Mail & Information",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff645959),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/mail.png",
                              width: 23,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "admin@boxkoo.co.id",
                              style: TextStyle(
                                color: Color(0xff645959),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/website.png",
                              width: 23,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "boxkoo.co.id",
                              style: TextStyle(
                                color: Color(0xff645959),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class itemCS extends StatelessWidget {
  final String nama;
  itemCS({required this.nama});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 278,
      height: 48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7), color: orangeColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/cs.png",
            width: 60,
          ),
          Text(
            nama,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Image.asset(
            "assets/images/whatsApp.png",
            width: 42,
          ),
        ],
      ),
    );
  }
}
