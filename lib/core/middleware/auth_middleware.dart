import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/core/constant/routes.dart';
import 'package:my_project/main.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPreferences!.getString("token") != null) {
      return const RouteSettings(name: AppRout.home);
    }
    return null;
  }
}
