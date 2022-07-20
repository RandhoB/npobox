import 'package:flutter/material.dart';

import '../theme.dart';

class OtpSimbol extends StatelessWidget {
  OtpSimbol({required this.Pelengkap});

  final String Pelengkap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35), color: buttonotpColor),
        child: Center(
          child: Image.asset(
            Pelengkap,
            width: 32,
            height: 32,
          ),
        ),
      ),
    );
  }
}
