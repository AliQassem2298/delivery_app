import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/controller/auth/EdteProfile_controller.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/core/constant/routes.dart';
import 'package:my_project/view/widget/auth/addImage.dart';
import 'package:my_project/view/widget/auth/textfield.dart';

class EditProfilePage extends StatelessWidget {
  final EditProfileController controller = Get.put(EditProfileController());

  EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
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
              Textfield(
                onChanged: (value) => controller.firstName.value = value,
                labelText: 'First Name',
              ),
              const SizedBox(height: 10),
              Textfield(
                onChanged: (value) => controller.lastName.value = value,
                labelText: 'Last Name',
              ),
              const SizedBox(height: 10),
              Textfield(
                onChanged: (value) => controller.password.value = value,
                labelText: 'Password',
              ),
              const SizedBox(height: 10),
              ListTile(
                onTap: () {
                  Get.toNamed(AppRout.address);
                },
                title: const Text("location "),
                trailing: const Icon(Icons.location_on),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: controller.saveProfile,
                style: ElevatedButton.styleFrom(
                  backgroundColor: APPColor.primarycolor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: const Text('Save',
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
