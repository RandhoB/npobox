import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:npobox/app/modules/profile_page/views/contact_us_view.dart';

import '../../../../theme.dart';
import '../../../routes/app_pages.dart';
import '../controllers/profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //untuk agar button floating tidak muncul
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      "assets/icons/Back2.png",
                      width: 26,
                      height: 26,
                    ),
                  ),
                  Text(
                    "SAVE",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: orangeColor),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Image.asset(
                "assets/icons/user-profile.png",
                width: 107,
                height: 107,
              ),
              SizedBox(
                height: 11,
              ),
              Center(
                child: Text(
                  "Change Profile picture",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: orangeColor,
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Full name",
                    style: TextStyle(color: WTextTopUp),
                  ),
                  TextField(
                    autocorrect: false,
                    decoration: InputDecoration(),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "PRIVATE DETAILS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff776D6D),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Phone Number",
                    style: TextStyle(color: WTextTopUp),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: TextField(
                          autocorrect: false,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Change",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 50,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(color: WTextTopUp),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: TextField(
                          autocorrect: false,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "(Not verified)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffED3434),
                            fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Verify",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "KYC Verification",
                    style: TextStyle(color: WTextTopUp, fontSize: 16),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      InkWell(
                        splashColor: Colors.black,
                        onTap: () {},
                        child: Container(
                          width: 156,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: orangeColor),
                          child: Center(
                            child: Text(
                              "Upload",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "(Not verified)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffED3434),
                            fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Verify",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "PIN",
                    style: TextStyle(
                      color: Color(0xff776D6D),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Change PIN",
                    style: TextStyle(
                      color: WTextTopUp,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "HELP",
                    style: TextStyle(
                      color: Color(0xff776D6D),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/faq.png",
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "FAQS",
                        style: TextStyle(
                          color: WTextTopUp,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(ContactUsView());
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/online-support.png",
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Contact Us",
                          style: TextStyle(
                            color: WTextTopUp,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: orangeColor),
      //----------
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
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        Get.toNamed(Routes.HOME);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/home.png",
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        Get.toNamed(Routes.TRANSACTION_PAGE);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/transaction.png",
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            "Transaction",
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.22,
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        Get.toNamed(Routes.INBOX_PAGE);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/email.png",
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            "Inbox",
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        Get.toNamed(Routes.PROFILE_PAGE);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/person.png",
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            "Account",
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
