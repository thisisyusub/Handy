import 'package:handy/contants/access_token.dart';
import 'package:handy/contants/keys.dart';
import 'package:handy/data_layer/models/http_exception.dart';
import 'package:handy/data_layer/models/login_response.dart';
import 'package:handy/data_layer/models/register_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:meta/meta.dart';

class ApiService {
  static ApiService _apiService;
  final _baseUrl = 'base url';

  ApiService._internal();

  static ApiService get getInstance =>
      _apiService = _apiService ?? ApiService._internal();

  Future<RegisterResponse> registerUser({
    String name,
    String email,
    String password,
  }) async {
    final response = await http.post('${_baseUrl} api method', body: {
      'access': accessToken,
      'name': name,
      'email': email,
      'password': password,
    });

    if (response.statusCode != 200) {
      throw HttpException(response.body);
    }

    final registerResponse = RegisterResponse.fromJson(
      await json.decode(
        response.body,
      ),
    );
    return registerResponse;
  }

  Future<LoginResponse> loginUser({
    @required String email,
    @required String password,
  }) async {
    final response = await http.post('${_baseUrl} api method', body: {
      Keys.access: accessToken,
      Keys.email: email,
      Keys.password: password,
    });

    if (response.statusCode != 200) {
      throw HttpException(response.body);
    }

    final loginResponse = LoginResponse.fromJson(
      await json.decode(
        response.body,
      ),
    );

    return loginResponse;
  }
}
