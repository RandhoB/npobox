class CheckUser {
  int? responCode;
  String? msg;

  CheckUser({this.responCode, this.msg});

  CheckUser.fromJson(Map<String, dynamic> json) {
    responCode = json['responCode'];
    msg = json['Msg'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['responCode'] = responCode;
    data['Msg'] = msg;
    return data;
  }
}
