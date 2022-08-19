// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.responCode,
    this.msg,
  });

  int? responCode;
  String? msg;

  factory User.fromJson(Map<String, dynamic> json) => User(
        responCode: json["responCode"],
        msg: json["Msg"],
      );

  Map<String, dynamic> toJson() => {
        "responCode": responCode,
        "Msg": msg,
      };

  //dari sini akan langsung direct ke whatsapp dengan nomor tujuan Yogi
}
