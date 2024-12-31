// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:my_project/controller/auth/edteProfile_controller.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/services/update_address_service.dart';

import 'package:my_project/view/widget/auth/customtextform.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  TextEditingController location = TextEditingController();

  GlobalKey<FormState> formState = GlobalKey();
  final EditProfileController controller = Get.put(EditProfileController());

  bool isLoading = false;

  void loadingIndicatorFalse() {
    isLoading = false;
    setState(() {});
  }

  void loadingIndicatorTrue() {
    isLoading = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: APPColor.background,
          title: const Text("Address"),
        ),
        body: Form(
          key: formState,
          child: Column(
            children: [
              Customtextform(
                mycontroller: location,
                hinttext: "Enter your location",
                iconData: Icons.location_on,
                labeltext: "Location",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required.';
                  }

                  return null; // لا يوجد خطأ
                },
                keyboardType: TextInputType.text,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      if (formState.currentState!.validate()) {
                        loadingIndicatorTrue();

                        try {
                          await UpdateAddressService().updateAddress(
                            location: location.text,
                          );
                          controller.up();
                          print('Success');
                          loadingIndicatorFalse();
                          Get.snackbar(
                            'Hi',
                            'Address updated successfully',
                          );
                        } catch (e) {
                          print(e.toString());
                          Get.snackbar(
                            'Sorry',
                            e.toString(),
                            colorText: Colors.white,
                            backgroundColor: Colors.red,
                          );
                        }
                        loadingIndicatorFalse();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: APPColor.primarycolor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ).paddingOnly(top: 10),
            ],
          ).paddingSymmetric(vertical: 35, horizontal: 16),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     // Get.to(() => Add());
        //   },
        //   backgroundColor: APPColor.primarycolor,
        //   child: const Icon(
        //     Icons.add,
        //     color: Colors.white,
        //   ),
        // ),
        // body: Container(
        //   child: ListView(),
        // ),
      ),
    );
  }
}
