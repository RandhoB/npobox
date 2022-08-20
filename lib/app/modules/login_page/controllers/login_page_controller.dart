import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';
import 'package:npobox/app/modules/login_page/providers/check_user_provider.dart';
import 'package:npobox/app/modules/login_page/views/otp_page_view.dart';
import 'package:npobox/widgets/otpItem.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../routes/app_pages.dart';
import '../../../utilities/storage_consts.dart';

class LoginPageController extends GetxController {
  final CheckUserProvider provider;
  // LoginPageController(CheckUserProvider find, {this.provider});
  LoginPageController(this.provider);
  RxBool isLoading = false.obs;
  RxList<int> code = List<int>.empty().obs;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController controllerNoHP = TextEditingController();

  void checkUser() async {
    var whatsapp = "6282310119696";
    var text = "Req OTP POBOX";
    try {
      isLoading(true);
      Map<String, String> payload = {
        "nohp": controllerNoHP.text,
      };
      var res = await provider.getNomor(payload);
      Logger().i(res.statusCode);
      Logger().i(res.bodyString);
      Logger().d(res.body);
      isLoading(false);
      final storage = Get.find<GetStorage>();
      storage.write(
          StorageConstants.tokenAuthorization, res.body['accessToken']);
      storage.write(StorageConstants.pobox, controllerNoHP.text);
      //url wa.me
      launchUrl(Uri.parse('whatsapp://send?phone=$whatsapp&text=$text'));
      // launchUrl(Uri.parse('https://wa.me/6282310119696'));
      // FlutterOpenWhatsapp.sendSingleMessage('$whatsapp', '$text');
      Get.offAll(OtpPageView());
    } catch (e, s) {
      isLoading(false);
      Logger().e(s);
      Logger().e(e);
    }
  }

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
