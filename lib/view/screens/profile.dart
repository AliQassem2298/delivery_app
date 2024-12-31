// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/controller/auth/edteProfile_controller.dart';
import 'package:my_project/main.dart';
import 'package:my_project/view/address/address.dart';
import 'package:my_project/view/widget/auth/add_image.dart';
import 'package:my_project/view/widget/auth/textfield.dart';

class EditProfilePage extends StatelessWidget {
  // final EditProfileController controller = Get.put(EditProfileController());

  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditProfileController>(
        init: EditProfileController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Profile'),
              backgroundColor: Colors.white,
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 17),
                    const Addimage(),
                    const SizedBox(height: 20),
                    // Textfield(
                    //   onChanged: (value) => controller.firstName.value = value,
                    //   labelText: 'First Name',
                    // ),
                    CustomContainer(
                      text:
                          'First name: ${sharedPreferences!.getString("first_name")}',
                    ),
                    const SizedBox(height: 10),
                    // Textfield(
                    //   onChanged: (value) => controller.lastName.value = value,
                    //   labelText: 'Last Name',
                    // ),
                    CustomContainer(
                      text:
                          'Last name: ${sharedPreferences!.getString("last_name")}',
                    ),

                    const SizedBox(height: 10),
                    // Textfield(
                    //   onChanged: (value) => controller.password.value = value,
                    //   labelText: 'Password',
                    // ),
                    CustomContainer(
                      text:
                          'Phone number: ${sharedPreferences!.getString("phone_number")}',
                    ),

                    const SizedBox(height: 10),
                    sharedPreferences!.getString("location") != null
                        ? CustomContainer(
                            text:
                                'Current location: ${sharedPreferences!.getString("location")}',
                          )
                        : Container(),

                    const SizedBox(height: 10),
                    sharedPreferences!.getString("location") == null
                        ? ListTile(
                            onTap: () {
                              Get.to(() => Address());
                            },
                            title: const Text("Add your location"),
                            trailing: const Icon(Icons.location_on),
                          )
                        : ListTile(
                            onTap: () {
                              Get.to(() => Address());
                            },
                            title: const Text("Update your location"),
                            trailing: const Icon(Icons.location_on),
                          ),
                    const SizedBox(height: 10),
                    // ElevatedButton(
                    //   onPressed: controller.saveProfile,
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: APPColor.primarycolor,
                    //     padding:
                    //         const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    //   ),
                    //   child: const Text('Save',
                    //       style: TextStyle(fontSize: 18, color: Colors.white)),
                    // ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
