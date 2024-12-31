// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class EditProfileController extends GetxController {
  var firstName = ''.obs;
  var lastName = ''.obs;
  var password = ''.obs;
  var location = ''.obs;
  var profileImage = Rx<File?>(null);

  void up() {
    update();
  }

  final ImagePicker _picker = ImagePicker();

  void pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      profileImage.value = File(pickedFile.path);
    }
  }

  void saveProfile() {
    if (firstName.isEmpty ||
        lastName.isEmpty ||
        password.isEmpty ||
        location.isEmpty) {
      Get.snackbar('Error', 'All fields are required.',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    } else {
      Get.snackbar('Success', 'Profile updated successfully.',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: const Color(0xffACE5F6),
          colorText: Colors.white);
    }
  }
}
