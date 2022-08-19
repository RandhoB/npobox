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
    this.data,
    this.waStatus,
  });

  int? responCode;
  bool? msg;
  dynamic? data;
  String? waStatus;

  factory User.fromJson(Map<String, dynamic> json) => User(
        responCode: json["responCode"],
        msg: json["Msg"],
        data: json["Data"],
        waStatus: json["WaStatus"],
      );

  Map<String, dynamic> toJson() => {
        "responCode": responCode,
        "Msg": msg,
        "Data": data,
        "WaStatus": waStatus,
      };
}
