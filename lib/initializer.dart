import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:logger/logger.dart';
import 'package:npobox/app/routes/app_pages.dart';

import 'app/utilities/utilities.dart';

class Initializer {
  static Future<void> init() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
      await _initStorage();
      _initGetConnect();
      _initScreenPreference();
    } catch (err) {
      rethrow;
    }
  }

  static Future<void> _initGetConnect() async {
    Logger().i("Init GetConnect");
    final connect = GetConnect();
    const url = "https://newpoboxdev.posindonesia.co.id:4000";
    connect.baseUrl = url;
    connect.timeout = const Duration(seconds: 20);
    connect.httpClient.maxAuthRetries = 0;

    connect.httpClient.addRequestModifier<dynamic>(
      (request) {
        final storage = Get.find<GetStorage>();
        final token = storage.read(StorageConstants.tokenAuthorization);
        if (token != null) {
          request.headers['Authorization'] = 'Bearer $token';
        }
        Logger().d(request.headers);
        return request;
      },
    );

    connect.httpClient.addResponseModifier(
      (request, response) async {
        Logger().i(request.url);
        Logger().i(response.statusCode);
        if (response.statusCode == 401) {
          Get.offAllNamed(Routes.LOGIN_PAGE);
          DialogUtil.showWarning(
            message: 'Sesi login Anda telah habis, silahkan login kembali',
          );
          // throw 'Sesi login Anda telah habis, silahkan login kembali';
        } else if (response.statusCode == 500) {
          Logger().d(jsonEncode(response.body));
          var res = jsonDecode(jsonEncode(response.body));
          Logger().d(res);
          var message = response.body == null
              ? 'Yah!, sepertinya ada yang error nih. Tenang team kami sedang mengeceknya'
              : '';

          DialogUtil.showWarning(
            message: message,
          );
          throw message;
        }
        // else if (response.statusCode == 400) {
        //   Logger().d(jsonEncode(response.body));
        //   var res = jsonDecode(jsonEncode(response.body));
        //   Logger().d(res);
        //   var message = response.body == null ? 'Username/password salah' : '';

        //   DialogUtil.showWarning(
        //     message: message,
        //   );
        //   throw message;
        // }
        else {
          return response;
        }
      },
    );

    Logger().i('Connected to: $url');
    Get.put(connect);
    Logger().i("Finish Init GetConnect");
  }

  static Future<void> _initStorage() async {
    Logger().i("Init GetStorage");
    await GetStorage.init();
    Get.put(GetStorage());
    Logger().i("Finish Init GetStorage");
  }

  static void _initScreenPreference() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
