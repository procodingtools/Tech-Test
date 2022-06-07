import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tech_test/tools/res.dart';

class BaseWebService extends ChangeNotifier {
  late Dio dio;
  bool retryLogin = false;

  BaseWebService() {
    dio = Dio(BaseOptions(baseUrl: Res.host, headers: {'Authorization': 'Bearer ${Res.token}'}));
  }

  void setToken(String token) {
    Res.token = token;
    dio.options.headers['Authorization'] = 'Bearer $token';
  }
}