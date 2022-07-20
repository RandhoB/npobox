import 'package:flutter/material.dart';

import '../theme.dart';

class OtpAngkaKosong extends StatelessWidget {
  OtpAngkaKosong({required this.Pelengkap});

  final String Pelengkap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35), color: Colors.transparent),
      child: Center(
        child: Text(
          Pelengkap,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: orangeColor,
          ),
        ),
      ),
    );
  }
}
