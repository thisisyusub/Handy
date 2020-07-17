import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:meta/meta.dart';

import '../../utils/constants/keys.dart';
import '../../utils/access_token/access_token.dart';
import '..//models/http_exception.dart';
import '../models/login_response.dart';
import '../models/register_response.dart';


class ApiService {
  static ApiService _apiService;
  final _baseUrl = 'https://handyheath.xyz/api/';

  ApiService._internal();

  static ApiService get getInstance =>
      _apiService = _apiService ?? ApiService._internal();

  Future<LoginResponse> loginUser({
    @required String email,
    @required String password,
  }) async {
    final response = await http.post('${_baseUrl}login.php', body: {
      Keys.access: accessToken,
      Keys.email: email,
      Keys.password: password,
    });

    if (response.statusCode != 200) {
      throw HttpException(response.statusCode.toString());
    }

    final loginResponse = LoginResponse.fromJson(
      await json.decode(
        response.body,
      ),
    );

    return loginResponse;
  }

  Future<RegisterResponse> registerUser({
    @required String email,
    @required String password,
  }) async {
    final response = await http.post('${_baseUrl}register.php', body: {
      Keys.access: accessToken,
      Keys.email: email,
      Keys.password: password,
    });

    if (response.statusCode != 200) {
      throw HttpException(response.statusCode.toString());
    }

    final registerResponse = RegisterResponse.fromJson(
      await json.decode(
        response.body,
      ),
    );

    return registerResponse;
  }
}
