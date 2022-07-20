import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:npobox/app/modules/home/views/detail_page.dart';
import 'package:npobox/theme.dart';

class MypoboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
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
                      width: 25,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "My PO Box",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: WTextTopUp),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Text(
                    "My PO Box (3)",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: titleColor),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Stack(
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
                              Text(
                                "Enterprise",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 235,
                          ),
                          GestureDetector(
                            onTap: (() {
                              Get.to(DetailPage());
                            }),
                            child: Container(
                              width: 78,
                              height: 29,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26),
                                  color: Colors.white),
                              child: Center(
                                child: Text(
                                  "Detail",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: orangeColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 45,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
