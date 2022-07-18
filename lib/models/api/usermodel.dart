class UserModel {
  String? username;
  String? email;

  String? phone;
  String? password;

  UserModel({
    this.username,
    this.email,
    this.phone,
    this.password,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    username = json['name'];
    email = json['email'];
    password = json['password'];
    phone = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['email'] = email;
    data['name'] = username;
    data['password'] = password;
    data['photo'] = phone;

    return data;
  }
}

class LoginModel {
  Meta? meta;
  Data? data;

  LoginModel({this.meta, this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Meta {
  String? message;
  int? code;
  String? status;

  Meta({this.message, this.code, this.status});

  Meta.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    code = json['code'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['code'] = code;
    data['status'] = status;
    return data;
  }
}

class Data {
  int? id;

  String? email;
  String? password;
  String? token;

  Data({this.id, this.email, this.password, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];

    email = json['email'];
    password = json['password'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;

    data['email'] = email;
    data['password'] = password;

    data['token'] = token;
    return data;
  }
}
