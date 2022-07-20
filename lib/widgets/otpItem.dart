import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../app/modules/login_page/controllers/login_page_controller.dart';

class OtpItem extends StatelessWidget {
  // final otpC = Get.find<LoginPageController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        autocorrect: false,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        onSaved: (pin1) {},
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          disabledBorder: InputBorder.none,
          // enabledBorder: InputBorder.none,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
          ),
          fillColor: Color(0xffEBE4E1),
        ),
      ),
    );
  }
}
