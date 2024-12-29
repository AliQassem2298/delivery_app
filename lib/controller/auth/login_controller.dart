import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_project/core/constant/routes.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignup();
}

class LoginControllerImp extends LoginController {
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formState = GlobalKey();
  RxBool isLoading = false.obs;

  void loadingIndicatorFalse() {
    isLoading.value = false;
  }

  void loadingIndicatorTrue() {
    isLoading.value = true;
  }

  @override
  login() {
    //if (number.text.trim().isNotEmpty && password.text.trim().isNotEmpty) {
    Get.toNamed(AppRout.home);
    // }  else {

    //   Get.snackbar('error', "Please fill in all fields.",
    //       snackPosition: SnackPosition.BOTTOM);
    // }
  }

  @override
  goToSignup() {
    Get.toNamed(AppRout.signup);
  }

  @override
  void onInit() {
    number = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    number.dispose();
    password.dispose();
    super.dispose();
  }

}
