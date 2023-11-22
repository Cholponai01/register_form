class RegisterModel {
  int? id;
  String? username;
  String? firstName;
  String? lastName;
  String? role;
  String? phoneNumber;
  Null? sewingWorkshop;
  bool? workStatus;

  RegisterModel(
      {this.id,
      this.username,
      this.firstName,
      this.lastName,
      this.role,
      this.phoneNumber,
      this.sewingWorkshop,
      this.workStatus});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    role = json['role'];
    phoneNumber = json['phone_number'];
    sewingWorkshop = json['sewing_workshop'];
    workStatus = json['work_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['role'] = role;
    data['phone_number'] = phoneNumber;
    data['sewing_workshop'] = sewingWorkshop;
    data['work_status'] = workStatus;
    return data;
  }
}
