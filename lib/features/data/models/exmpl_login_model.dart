class LoginModel {
  List<String>? username;
  List<String>? password;

  LoginModel({this.username, this.password});

  LoginModel.fromJson(Map<String, dynamic> json) {
    username = json['username'].cast<String>();
    password = json['password'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    return data;
  }
}
