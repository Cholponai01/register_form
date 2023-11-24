class RegisterModel {
  List<String>? username;
  List<String>? password;
  List<String>? password2;
  List<String>? phoneNumber;
  List<String>? role;

  RegisterModel(
      {this.username,
      this.password,
      this.password2,
      this.phoneNumber,
      this.role});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    username = json['username'].cast<String>();
    password = json['password'].cast<String>();
    password2 = json['password2'].cast<String>();
    phoneNumber = json['phone_number'].cast<String>();
    role = json['role'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['password'] = password;
    data['password2'] = password2;
    data['phone_number'] = phoneNumber;
    data['role'] = role;
    return data;
  }
}


// https://f961-213-109-66-98.ngrok-free.app/api/v1/login/refresh/
// https://f961-213-109-66-98.ngrok-free.app/api/v1/login/
// https://f961-213-109-66-98.ngrok-free.app/api/v1/register/