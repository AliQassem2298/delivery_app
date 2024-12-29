// ignore_for_file: missing_required_param

import 'package:my_project/helper/api.dart';
import 'package:my_project/main.dart';
import 'package:my_project/models/logout_model.dart';

class LogoutService {
  Future<LogoutModel> logout() async {
    Map<String, dynamic> data = await Api().post(
      url: '$baseUrl/logout',
      token: sharedPreferences!.getString("token"),
    );
    return LogoutModel.fromJson(data);
  }
}
