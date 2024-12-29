// ignore_for_file: missing_required_param

import 'package:my_project/helper/api.dart';
import 'package:my_project/models/register_model.dart';

class RegisterService {
  Future<RegisterModel> register({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String password,
    required String passwordConfirmation,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: '$baseUrl/register',
      body: {
        "first_name": firstName,
        "last_name": lastName,
        "phone_number": phoneNumber,
        "password": password,
        "password_confirmation": passwordConfirmation,
      },
    );
    return RegisterModel.fromJson(data);
  }
}
