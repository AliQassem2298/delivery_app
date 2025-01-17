// ignore_for_file: camel_case_types

import 'package:get/get.dart';
import 'package:my_project/core/constant/routes.dart';

abstract class VerficodeController extends GetxController {
  checkcode();
  goTosuccesspage();
}

class verifycodecontrollerIm extends VerficodeController {
  late String verfiycode;
  RxBool isLoading = false.obs;

  void loadingIndicatorTrue() {
    isLoading.value = true;
    update();
  }

  void loadingIndicatorFalse() {
    isLoading.value = false;
    update();
  }

  @override
  checkcode() {}

  @override
  goTosuccesspage() {
    Get.toNamed(AppRout.successSignup);
  }
}
