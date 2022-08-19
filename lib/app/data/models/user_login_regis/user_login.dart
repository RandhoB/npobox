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
    this.accessToken,
    this.data,
  });

  int? responCode;
  String? msg;
  String? accessToken;
  Data? data;

  factory User.fromJson(Map<String, dynamic> json) => User(
        responCode: json["responCode"],
        msg: json["Msg"],
        accessToken: json["accessToken"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "responCode": responCode,
        "Msg": msg,
        "accessToken": accessToken,
        "data": data!.toJson(),
      };
}

class Data {
  Data({
    this.id,
    this.nama,
    this.noHp,
    this.email,
    this.pin,
    this.fotoKtp,
    this.verify,
  });

  int? id;
  String? nama;
  String? noHp;
  String? email;
  String? pin;
  String? fotoKtp;
  int? verify;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        nama: json["nama"],
        noHp: json["no_hp"],
        email: json["email"],
        pin: json["pin"],
        fotoKtp: json["foto_ktp"],
        verify: json["verify"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "no_hp": noHp,
        "email": email,
        "pin": pin,
        "foto_ktp": fotoKtp,
        "verify": verify,
      };
}
