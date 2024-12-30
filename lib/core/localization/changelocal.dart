// ignore_for_file: camel_case_types

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_project/core/services/services.dart';

class localcontroller extends GetxController {
  Locale? languge;

  Myservices myservices = Get.find();

  changelang(String langcode) {
    Locale locale = Locale(langcode);
    myservices.sharedpreferences.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    super.onInit();
    String? sharedpreflang = myservices.sharedpreferences.getString('lang');
    if (sharedpreflang == "Ar") {
      languge = const Locale('Ar');
    } else {
      if (sharedpreflang == "En") {
        languge = const Locale('En');
      } else {
        languge = Locale(Get.deviceLocale!.languageCode);
      }
    }
  }
}
