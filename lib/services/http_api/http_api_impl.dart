import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:jwx_flutter/bloc/models/user.dart';
import 'package:jwx_flutter/services/http_api/http_api.dart';
import 'package:jwx_flutter/services/http_api/http_url.dart';
import 'package:jwx_flutter/utils/global.dart';

class HttpAPIImpl implements HttpAPI {
  static BaseOptions _options = BaseOptions(
    baseUrl: HttpURL.baseURL,
    headers: {
      Headers.contentTypeHeader: Headers.jsonContentType
    },
    connectTimeout: 5000,
    receiveTimeout: 10000,
  );
  @override
  Future<Map<String, dynamic>> login(String email, String password) async {
    final Map data = {"email":email, "password": password};
    Response response = await Dio(_options).post(
        HttpURL.login,
        data: data
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.data);
      var userData = responseData['data'];
      User authUser = User.fromJson(userData);
      return {'status': true, 'message': 'Successful', 'user': authUser};
    } else {
      return {'status': false, 'message': json.decode(response.data)['error']};
    }
  }

  @override
  Future<Map<String, dynamic>> register(String email, String password, String passwordConfirmation) async {
    final Map data = {"email":email, "password": password, "password_confirmation": passwordConfirmation};
    Response response = await Dio(_options).post(
        HttpURL.login,
        data: data
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.data);
      var userData = responseData['data'];
      User authUser = User.fromJson(userData);
      return {'status': true, 'message': 'Successful', 'user': authUser};
    } else {
      return {'status': false, 'message': json.decode(response.data)['error']};
    }
  }

  Map<String, dynamic> getAuthorizationHeader() {
    var headers;
    String accessToken = Global.user.token;
    if (accessToken != null) {
      headers = {
        'Authorization': 'Bearer $accessToken',
      };
    }
    return headers;
  }

}