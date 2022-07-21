import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:npobox/app/routes/app_pages.dart';

import '../controllers/intro_page_controller.dart';

import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:npobox/app/modules/splash_page/views/splash_page_view.dart';

class IntroPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "NPOBOX",
          body: "Semangat untuk lebih berkembang\nYakin Bisa !",
          image: Center(
              child: Image.asset(
            'assets/splash_screen1.png',
          )),
        ),
        PageViewModel(
          title: "Percaya!",
          body: "Proses tidak akan mengkhianati hasil !!!",
          image: Center(
            child: Image.asset(
              'assets/splash_screen2.png',
            ),
          ),
        ),
      ],
      showNextButton: true,
      next: Text("NEXT>>>"),
      done: const Text("Next Page",
          style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () {
        Get.offAllNamed(Routes.SPLASH_PAGE);
      },
    );
  }
}
