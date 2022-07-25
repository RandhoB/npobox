import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:npobox/app/modules/onboarding_page/models/onboarding_model.dart';
import 'package:npobox/app/routes/app_pages.dart';
import 'package:npobox/theme.dart';

import '../controllers/onboarding_page_controller.dart';

class OnboardingPageView extends StatefulWidget {
  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  @override
  int currentIndex = 0;

  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        Image.asset(
                          contents[i].image,
                          height: MediaQuery.of(context).size.height * 0.35,
                        ),
                        Row(
                          children: [
                            Text(
                              contents[i].title,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff467E8D)),
                            ),
                            Image.asset(
                              "assets/icons/Happy.png",
                              width: 25,
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              contents[i].discription,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 32,
                                color: Color(0xff31616D),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => buildDot(index, context),
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.all(40),
              width: double.infinity,
              child: FlatButton(
                child: Text(currentIndex == contents.length - 1
                    ? "Get Started"
                    : "Next"),
                onPressed: () {
                  if (currentIndex == contents.length - 1) {
                    Get.offAllNamed(Routes.LOGIN_PAGE);
                  }
                  _controller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
                color: orangeColor,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 1,
      width: 79,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Colors.black : Color(0xffACA0A0),
      ),
    );
  }
}
