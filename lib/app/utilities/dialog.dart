import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogUtil {
  static void showSuccess({required String message}) {
    Get.rawSnackbar(
        title: 'Success',
        icon: const Icon(Icons.thumb_up, color: Colors.white),
        message: message,
        backgroundColor: Colors.green.shade600,
        duration: const Duration(seconds: 10));
  }

  static void showWarning({required String message}) {
    Get.defaultDialog(
        title: "Terjadi Kesalahan",
        radius: 0,
        content: Container(
          padding: const EdgeInsets.all(0),
          child: Text(message),
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
        )
        // content: Text(message),

        );

    // Get.rawSnackbar(
    //     title: 'Warning',
    //     icon: const Icon(Icons.warning, color: Colors.white),
    //     message: message,
    //     backgroundColor: Colors.orange.shade900,
    //     duration: const Duration(seconds: 10));
  }

  static void showError({required String message}) {
    Get.rawSnackbar(
        title: 'Error',
        icon: const Icon(Icons.error, color: Colors.white),
        message: message,
        backgroundColor: Colors.redAccent.shade700,
        duration: const Duration(seconds: 10));
  }
}
