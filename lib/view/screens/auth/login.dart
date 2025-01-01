// في واجهة المستخدم login.dart

// ignore_for_file: avoid_print, void_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:my_project/controller/auth/login_controller.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/services/login_service.dart';
import 'package:my_project/view/widget/auth/buttoncustom.dart';
import 'package:my_project/view/widget/auth/customtextbody.dart';
import 'package:my_project/view/widget/auth/customtextform.dart';
import 'package:my_project/view/widget/auth/customtexttitle.dart';
import 'package:my_project/view/widget/auth/logo.dart';
import 'package:my_project/view/widget/auth/custom_signup.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'successpage.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Obx(() => ModalProgressHUD(
        inAsyncCall: controller.isLoading.value,
        child: Scaffold(
          appBar: AppBar(
            // actions: [
            //   IconButton(
            //       onPressed: () {
            //         print('${sharedPreferences!.getString("token")}');
            //       },
            //       icon: const Icon(Icons.import_contacts)),
            //   IconButton(
            //       onPressed: () {
            //         sharedPreferences!.clear();
            //       },
            //       icon: const Icon(Icons.abc))
            // ],
            automaticallyImplyLeading: false,
            centerTitle: true,
            backgroundColor: APPColor.background,
            elevation: 0,
            title: Text('Log In',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: APPColor().grey)),
          ),
          body: PopScope(
            canPop: false,
            onPopInvokedWithResult: (bool didPop, Object? result) async {
              return Future.value(false);
            },
            child: Container(
              color: APPColor.background,
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              child: Form(
                key: controller.formState,
                child: ListView(
                  children: [
                    const Logo(),
                    const SizedBox(height: 17),
                    const Customtexttitle(
                      title: "Welcome Back",
                    ),
                    const SizedBox(height: 17),
                    const Customtextbody(
                      text: "Log In with your Phone Number and Password.",
                    ),
                    const SizedBox(height: 55),
                    Customtextform(
                      mycontroller: controller.number,
                      hinttext: "Enter your phone number",
                      iconData: Icons.phone,
                      labeltext: "Phone Number",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required.';
                        }
                        if (value.length != 10 || !value.isPhoneNumber) {
                          return 'You have to enter right number.';
                        }
                        return null; // لا يوجد خطأ
                      },
                      keyboardType: TextInputType.number,
                    ),
                    Customtextform(
                      mycontroller: controller.password,
                      hinttext: "Enter your password",
                      iconData: Icons.key,
                      labeltext: "Password",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required.';
                        }
                        if (value.length < 8) {
                          return 'The password must be more than 8.';
                        }
                        return null; // لا يوجد خطأ
                      },
                      keyboardType: TextInputType.text,
                    ),
                    Buttoncustom(
                      textbutton: "Log In",
                      onPressed: () async {
                        if (controller.formState.currentState!.validate()) {
                          controller.loadingIndicatorTrue();

                          try {
                            await LoginService().login(
                              phoneNumber: controller.number.text,
                              password: controller.password.text,
                            );
                            print('Success');
                            controller.loadingIndicatorFalse();
                            Get.snackbar(
                              'Hi',
                              'User Logged in successfuly',
                            );
                            Get.to(const SuccessSignup());
                          } catch (e) {
                            print(e.toString());
                            Get.snackbar(
                              'Sorry',
                              e.toString(),
                              colorText: Colors.white,
                              backgroundColor: Colors.red,
                            );
                          }
                          controller.loadingIndicatorFalse();
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Customsignup(
                      text2: "Don't have an account? ",
                      text1: "Sign Up",
                      onTap: () {
                        controller.goToSignup();
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        )));
  }
}
