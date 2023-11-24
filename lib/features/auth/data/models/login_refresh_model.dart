class LoginRefreshModel {
  List<String>? refresh;

  LoginRefreshModel({this.refresh});

  LoginRefreshModel.fromJson(Map<String, dynamic> json) {
    refresh = json['refresh'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['refresh'] = refresh;
    return data;
  }
}
