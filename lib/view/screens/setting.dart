import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:my_project/controller/auth/login_controller.dart';
import 'package:my_project/main.dart';
import 'package:my_project/services/logout_service.dart';

import 'package:my_project/view/screens/auth/about_us.dart';
import 'package:my_project/view/screens/auth/contact_us.dart';
import 'package:my_project/view/screens/language.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return ModalProgressHUD(
      inAsyncCall: controller.isLoading.value,
      child: Stack(children: [
        Container(
            color: Colors.white,
            child: Column(children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 230,
                    color: const Color(0xff16285a),
                  ),
                  Positioned(
                    top: 180,
                    child: Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: const CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                              'assets/images/photo_2024-12-21_18-03-36.jpg')),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 100),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Card(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                        //onTap: () {},
                        title: const Text("Disable Notification"),
                        trailing: Switch(
                          onChanged: (val) {},
                          value: true,
                        )),
                    //SizedBox(height: 10),

                    const SizedBox(height: 10),

                    ListTile(
                      onTap: () {
                        Get.to(const AboutUs());
                      },
                      title: const Text("About us "),
                      trailing: const Icon(Icons.question_mark),
                    ),
                    ListTile(
                      onTap: () {
                        Get.to(const ContactUs());
                      },
                      title: const Text("Contact us "),
                      trailing: const Icon(Icons.phone),
                    ),
                    ListTile(
                      onTap: () async {
                        controller.loadingIndicatorTrue();

                        try {
                          await LogoutService().logout();
                          sharedPreferences!.clear();
                          print('Success');
                          Get.snackbar(
                            'Hi',
                            'User logged out successfully',
                          );
                          Get.offAll(() => const Language());
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
                      },
                      title: const Text("Logout "),
                      trailing: const Icon(Icons.exit_to_app),
                    ),
                  ],
                )),
              )
            ]))
      ]),
    );
  }
}
