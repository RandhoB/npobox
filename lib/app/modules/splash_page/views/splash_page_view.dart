import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:npobox/app/routes/app_pages.dart';
import 'package:npobox/theme.dart';

import '../controllers/splash_page_controller.dart';

class SplashPageView extends GetView<SplashPageController> {
  final List myData = [
    'assets/splash_screen1.png',
    'assets/splash_screen2.png',
    'assets/splash_screen3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 80),
      child: Column(
        children: [
          CarouselSlider(
            items: myData
                .map((image) => Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ))
                .toList(),
            options: CarouselOptions(
              aspectRatio: 1 / 1.93,
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 4),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [],
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Get.offAllNamed(Routes.LOGIN_PAGE);
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7), color: orangeColor),
              child: Center(
                child: Text(
                  "Get Started",
                  style: buttonTextStyle.copyWith(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
