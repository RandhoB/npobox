import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [Row()],
        ),
      ),
    ));
  }
}
