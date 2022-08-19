// To parse this JSON data, do
//
//     final getUser = getUserFromJson(jsonString);

import 'dart:convert';

GetUser getUserFromJson(String str) => GetUser.fromJson(json.decode(str));

String getUserToJson(GetUser data) => json.encode(data.toJson());

class GetUser {
  GetUser({
    this.responCode,
    this.msg,
    this.data,
  });

  int? responCode;
  String? msg;
  List<Datum>? data;

  factory GetUser.fromJson(Map<String, dynamic> json) => GetUser(
        responCode: json["responCode"],
        msg: json["Msg"],
        data: List<Datum>.from(json["Data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "responCode": responCode,
        "Msg": msg,
        "Data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
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

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
