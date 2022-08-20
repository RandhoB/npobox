import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:npobox/app.dart';
import 'package:npobox/initializer.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await Initializer.init();
  runApp(App());
}
