import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:npobox/widgets/otpItem.dart';

class LoginPageController extends GetxController {
  RxList<int> code = List<int>.empty().obs;

  void addCode(int number) {
    if (code.length < 6) {
      code.add(number);
    }

    print(code);
  }

  List<OtpItem> getAllCode() {
    List<OtpItem> allCode = [];

    switch (code.length) {
      case 6:
        code.forEach((element) {
          allCode.add(OtpItem(data: element));
        });
        break;
      case 5:
        code.forEach((element) {
          allCode.add(OtpItem(data: element));
        });
        allCode.add(OtpItem());
        break;
      case 4:
        code.forEach((element) {
          allCode.add(OtpItem(data: element));
        });
        allCode.add(OtpItem());
        allCode.add(OtpItem());
        break;
      case 3:
        code.forEach((element) {
          allCode.add(OtpItem(data: element));
        });
        allCode.add(OtpItem());
        allCode.add(OtpItem());
        allCode.add(OtpItem());
        break;
      case 2:
        code.forEach((element) {
          allCode.add(OtpItem(data: element));
        });
        allCode.add(OtpItem());
        allCode.add(OtpItem());
        allCode.add(OtpItem());
        allCode.add(OtpItem());
        break;
      case 1:
        code.forEach((element) {
          allCode.add(OtpItem(data: element));
        });
        allCode.add(OtpItem());
        allCode.add(OtpItem());
        allCode.add(OtpItem());
        allCode.add(OtpItem());
        allCode.add(OtpItem());
        break;
      default:
        List.generate(6, (index) => allCode.add(OtpItem()));
    }

    return allCode;
  }
}
