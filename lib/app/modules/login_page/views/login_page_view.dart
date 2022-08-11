import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:npobox/app/modules/login_page/views/enter_pin_view.dart';
import 'package:npobox/app/modules/login_page/views/otp_page_view.dart';
import 'package:npobox/theme.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 55,
              right: 55,
              top: 55,
            ),
            child: Image.asset(
              "assets/image_login.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55, right: 55),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your mobile number",
                  style: TextStyle(color: Color(0xff776D6D), fontSize: 13),
                ),
                SizedBox(
                  height: 5,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: textfieldColor),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "+62 - ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                            child: TextField(
                          // controller: ,
                          textInputAction: TextInputAction.done,
                          autocorrect: false,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration.collapsed(
                            hintText: "",
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffBEAAAA)),
                            ),
                          ),
                        )),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //dibawah ini dibutuhkan perbandingan dengan database jika nomor
                //ada di database maka ke enter pin
                //jika nomor belum  terdaftar maka ke verify phone
                GestureDetector(
                  onTap: () {
                    Get.off(EnterPinView());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: orangeColor),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                //--------Termasuk menu yang belum di aktifkan-------
                // Center(
                //   child: Image.asset(
                //     "assets/or.png",
                //     width: 178,
                //   ),
                // ),
                // SizedBox(
                //   height: 15,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     MenuItemSignUp(
                //         image: "assets/Google.png", warna: orangeColor),
                //     MenuItemSignUp(
                //       image: "assets/Facebook.png",
                //       warna: blueColor,
                //     ),
                //   ],
                // ),
                // SizedBox(
                //   height: 34,
                // ),
                //-------------Sampai sini--------------
                Center(
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text:
                            "By continues to login, your accept our company's\n",
                        style: TextStyle(
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            color: Color(0xff9C8F8F)),
                        children: [
                          TextSpan(
                            text: "Terms & condition ",
                            style: TextStyle(
                                fontSize: 10,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff9C8F8F)),
                          ),
                          TextSpan(
                            text: "and",
                            style: TextStyle(
                                fontSize: 10,
                                fontStyle: FontStyle.italic,
                                color: Color(0xff9C8F8F)),
                          ),
                          TextSpan(
                            text: " Privacy policies",
                            style: TextStyle(
                                fontSize: 10,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff9C8F8F)),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class MenuItemSignUp extends StatelessWidget {
  String image;
  Color warna;
  MenuItemSignUp({required this.image, required this.warna});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 122,
        height: 38,
        decoration: BoxDecoration(
            border: Border.all(color: warna),
            borderRadius: BorderRadius.circular(7)),
        child: Image.asset("${image}"),
      ),
    );
  }
}
