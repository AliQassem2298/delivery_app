import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_project/core/constant/routes.dart';






abstract class signupController extends GetxController {

  signup();
  goTologin();
 
}
class signupControllerImp extends signupController{
 late TextEditingController number;
  late TextEditingController password;
   late TextEditingController firstname;
  late TextEditingController lastname;
  @override
  signup() {
    // if (number.text.trim().isNotEmpty && password.text.trim().isNotEmpty&& firstname.text.trim().isNotEmpty&&lastname.text.trim().isNotEmpty) {
   Get.toNamed(AppRout.home);
  // }  else {
  //      Get.snackbar('error', "Please fill in all fields.",
  //         snackPosition: SnackPosition.BOTTOM);
  //   }
  }
  
  @override
  goTologin() {
   Get.offNamed(AppRout.login);
  }
@override
  void onInit() {
   number=TextEditingController();
   password=TextEditingController();
    firstname=TextEditingController();
   lastname=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
   number.dispose();
   password.dispose();
   firstname.dispose();
   lastname.dispose();
    super.dispose();
  }
  
  
  
 
}