import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:lac/common/config.dart';

class LoginProvider extends GetConnect {
  final _dio = Dio();

  Future<dynamic> login(var userName, var passWord) async {
    try {
      final res = await _dio.post("${Config.baseUrl/login}", 
      data: {
         "username": userName.toString(),
        "password": passWord.toString()
      });

      return res.data;

    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
