// ignore_for_file: missing_required_param

import 'package:my_project/helper/api.dart';
import 'package:my_project/models/login_model.dart';

class LoginService {
  Future<LoginModel> login({
    required String phoneNumber,
    required String password,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: '$baseUrl/login',
      body: {
        "phone_number": phoneNumber,
        "password": password,
      },
    );
    return LoginModel.fromJson(data);
  }
}
