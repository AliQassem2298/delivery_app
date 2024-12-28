import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/controller/auth/EdteProfile_controller.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/core/constant/routes.dart';
import 'package:my_project/view/widget/auth/addImage.dart';
import 'package:my_project/view/widget/auth/textfield.dart';



class EditProfilePage extends StatelessWidget {
  final EditProfileController controller = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
             SizedBox(height: 17),
                Addimage(),
              SizedBox(height: 20),
             Textfield(onChanged:(value) => controller.firstName.value = value,labelText: 'First Name', ),
              SizedBox(height: 10),
                Textfield(onChanged:(value) => controller.lastName.value = value,labelText: 'Last Name', ),
              
              SizedBox(height: 10),
               Textfield(onChanged:(value) => controller.password.value = value,labelText: 'Password', ),
             
              SizedBox(height: 10),
            ListTile(
                    onTap: () {
                      Get.toNamed(AppRout.address);
                    },
                    title: Text("location "),
                    trailing: Icon(Icons.location_on),
                  ),
             
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: controller.saveProfile,
                style: ElevatedButton.styleFrom(
                  backgroundColor: APPColor.primarycolor,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text('Save', style: TextStyle(fontSize: 18,color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

