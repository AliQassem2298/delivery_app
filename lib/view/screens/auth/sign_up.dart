// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'package:my_project/controller/auth/signup_controller.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/view/screens/verified_code_page.dart';
import 'package:my_project/view/widget/auth/buttoncustom.dart';
import 'package:my_project/view/widget/auth/custom_login.dart';
import 'package:my_project/view/widget/auth/customtextbody.dart';
import 'package:my_project/view/widget/auth/customtextform.dart';
import 'package:my_project/view/widget/auth/customtexttitle.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    signupControllerImp controller = Get.put(signupControllerImp());
    return Obx(() => ModalProgressHUD(
          inAsyncCall: controller.isLoading.value,
          child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: APPColor.background,
                elevation: 0,
                title: Text('Sign Up',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: APPColor().grey)),
              ),
              body: Container(
                  color: APPColor.background,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                  child: Form(
                    key: controller.formState,
                    child: ListView(
                      children: [
                        const Customtexttitle(
                          title: "Welcome",
                        ),
                        const SizedBox(height: 10),
                        const Customtextbody(
                          text: "Sign up and start ordering!",
                        ),
                        const SizedBox(height: 20),
                        Customtextform(
                          hinttext: "Enter your first name ",
                          iconData: Icons.person_outlined,
                          labeltext: "First Name",
                          mycontroller: controller.firstName,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required.';
                            }

                            return null; // لا يوجد خطأ
                          },
                        ),
                        Customtextform(
                          hinttext: "Enter your last name ",
                          iconData: Icons.person_outlined,
                          labeltext: "Last Name",
                          mycontroller: controller.lastName,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required.';
                            }

                            return null; // لا يوجد خطأ
                          },
                        ),
                        Customtextform(
                          hinttext: "Enter your phone number ",
                          iconData: Icons.phone,
                          labeltext: "Phone Number",
                          mycontroller: controller.number,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required.';
                            }
                            if (value.length != 10 || !value.isPhoneNumber) {
                              return 'You have to enter right number.';
                            }
                            return null; // لا يوجد خطأ
                          },
                        ),
                        Customtextform(
                          hinttext: "Enter password ",
                          iconData: Icons.password,
                          labeltext: "Password",
                          mycontroller: controller.password,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required.';
                            }
                            if (value.length < 8) {
                              return 'The password must be more than 8.';
                            }
                            return null; // لا يوجد خطأ
                          },
                        ),
                        Customtextform(
                          hinttext: "Confirm password ",
                          iconData: Icons.password,
                          labeltext: "Password",
                          mycontroller: controller.confirmPassword,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required.';
                            }

                            if (value.length < 8) {
                              return 'The password must be more than 8.';
                            }
                            if (controller.password.text !=
                                controller.confirmPassword.text) {
                              return 'Passwords didn\'t match';
                            }
                            return null; // لا يوجد خطأ
                          },
                        ),
                        Buttoncustom(
                          textbutton: "Sign up",
                          onPressed: () async {
                            if (controller.formState.currentState!.validate()) {
                              controller.loadingIndicatorTrue();

                              try {
                                Get.to(() => const Verifycode(), arguments: {
                                  'firstName': controller.firstName.text,
                                  'lastName': controller.lastName.text,
                                  'phoneNumber': controller.number.text,
                                  'password': controller.password.text,
                                  'passwordConfirmation':
                                      controller.password.text,
                                });

                                print('Success');
                                controller.loadingIndicatorFalse();
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
                          height: 5,
                        ),
                        Customlogin(
                          text2: "  have an account? ",
                          text1: "Log In",
                          onTap: () {
                            controller.goTologin();
                          },
                        )
                      ],
                    ),
                  ))),
        ));
  }
}
