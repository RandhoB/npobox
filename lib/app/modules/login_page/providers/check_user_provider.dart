import 'dart:ffi';

import 'package:get/get.dart';

class CheckUserProvider {
  final GetConnect connect;
  CheckUserProvider(this.connect);

  getNomor(Map<String, String> payload) =>
      connect.get('/checkUser', headers: payload);
}
