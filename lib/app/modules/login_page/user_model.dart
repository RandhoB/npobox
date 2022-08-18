class User {
  int? responCode;
  String? msg;

  User({this.responCode, this.msg});

  User.fromJson(Map<String, dynamic> json) {
    responCode = json['responCode'];
    msg = json['Msg'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['responCode'] = responCode;
    data['Msg'] = msg;
    return data;
  }

  //isi dari DATA itu sendiri apakah dimasukkan atau tidak ????
}
