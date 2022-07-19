import 'dart:convert';
import 'dart:io';

import 'package:dapoint/models/api/profilemodel.dart';
import 'package:dapoint/models/api/usermodel.dart';
import 'package:dapoint/models/api/voucherlmodel.dart';

import 'package:dio/dio.dart';

class Api {
  var dio = Dio();

  Api() {
    BaseOptions options = BaseOptions(
      baseUrl: 'https://dapoint-api.herokuapp.com',
    );

    dio = Dio(options);
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
  }

  Future<LoginModel> login(String email, String password) async {
    try {
      Response response = await dio.post(
        '/user/login',
        data: {
          'email': email,
          'password': password,
        },
      );
      if (response.statusCode == 200) {
        return LoginModel.fromJson(response.data);
      } else {
        return throw Exception('Login Gagal');
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout) {
        throw Exception('Connection Timeout to Server');
      }
      if (e.response?.statusCode == 400) {
        throw Exception('Bad Request');
      }
      if (e.response?.statusCode == 500) {
        throw Exception('Internal Server Error');
      }
      throw Exception(e.message);
    }
  }

  Future<Response> register(UserModel user) async {
    try {
      final response = await dio.post(
        '/user/register',
        data: jsonEncode(user.toJson()),
      );
      return response;
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout) {
        throw Exception('Connection Timeout to Server');
      }
      if (e.response?.statusCode == 400) {
        throw Exception('Bad Request');
      }
      if (e.response?.statusCode == 500) {
        throw Exception('Internal Server Error');
      }
      throw Exception(e.message);
    }
  }

  static Future<User> profile() async {
    Response userData =
        await Dio().get('https://dapoint-api.herokuapp.com/user/4');

    User user = User.fromJson(userData.data);

    return user;
  }

  static Future<VoucherModel> voucher() async {
    Response userData =
        await Dio().get('https://dapoint-api.herokuapp.com/user/voucher/4');

    VoucherModel voucher = VoucherModel.fromJson(userData.data);

    return voucher;
  }
}
