import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme.dart';
import '../../../routes/app_pages.dart';
import '../controllers/inbox_page_controller.dart';

class InboxPageView extends GetView<InboxPageController> {
  const InboxPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InboxPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'InboxPageView is working',
          style: TextStyle(fontSize: 20),
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
