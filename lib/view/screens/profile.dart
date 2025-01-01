// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:my_project/controller/auth/edteProfile_controller.dart';
// import 'package:my_project/main.dart';
// import 'package:my_project/view/address/address.dart';
// import 'package:my_project/view/widget/auth/add_image.dart';
// import 'package:my_project/view/widget/auth/textfield.dart';

// class EditProfilePage extends StatelessWidget {
//   // final EditProfileController controller = Get.put(EditProfileController());

//   const EditProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<EditProfileController>(
//         init: EditProfileController(),
//         builder: (controller) {
//           return Scaffold(
//             appBar: AppBar(
//               title: const Text('Profile'),
//               backgroundColor: Colors.white,
//             ),
//             body: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     const SizedBox(height: 17),
//                     const Addimage(),
//                     const SizedBox(height: 20),
//                     // Textfield(
//                     //   onChanged: (value) => controller.firstName.value = value,
//                     //   labelText: 'First Name',
//                     // ),
//                     CustomContainer(
//                       text:
//                           'First name: ${sharedPreferences!.getString("first_name")}',
//                     ),
//                     const SizedBox(height: 10),
//                     // Textfield(
//                     //   onChanged: (value) => controller.lastName.value = value,
//                     //   labelText: 'Last Name',
//                     // ),
//                     CustomContainer(
//                       text:
//                           'Last name: ${sharedPreferences!.getString("last_name")}',
//                     ),

//                     const SizedBox(height: 10),
//                     // Textfield(
//                     //   onChanged: (value) => controller.password.value = value,
//                     //   labelText: 'Password',
//                     // ),
//                     CustomContainer(
//                       text:
//                           'Phone number: ${sharedPreferences!.getString("phone_number")}',
//                     ),

//                     const SizedBox(height: 10),
//                     sharedPreferences!.getString("location") != null
//                         ? CustomContainer(
//                             text:
//                                 'Current location: ${sharedPreferences!.getString("location")}',
//                           )
//                         : Container(),

//                     const SizedBox(height: 10),
//                     sharedPreferences!.getString("location") == null
//                         ? ListTile(
//                             onTap: () {
//                               Get.to(() => Address());
//                             },
//                             title: const Text("Add your location"),
//                             trailing: const Icon(Icons.location_on),
//                           )
//                         : ListTile(
//                             onTap: () {
//                               Get.to(() => Address());
//                             },
//                             title: const Text("Update your location"),
//                             trailing: const Icon(Icons.location_on),
//                           ),
//                     const SizedBox(height: 10),
//                     // ElevatedButton(
//                     //   onPressed: controller.saveProfile,
//                     //   style: ElevatedButton.styleFrom(
//                     //     backgroundColor: APPColor.primarycolor,
//                     //     padding:
//                     //         const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//                     //   ),
//                     //   child: const Text('Save',
//                     //       style: TextStyle(fontSize: 18, color: Colors.white)),
//                     // ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         });
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/controller/auth/edteProfile_controller.dart';
import 'package:my_project/main.dart';
import 'package:my_project/models/show_user_profile_model.dart';
import 'package:my_project/services/show_user_profile_service.dart';
import 'package:my_project/services/update_profile_service.dart';
import 'package:my_project/view/address/address.dart';
import 'package:my_project/view/widget/auth/add_image.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController phoneNumberController;

  String firstName = "";
  String lastName = "";
  String phoneNumber = "";

  bool isLoading = true;
  ShowUserProfileModel? user;

  @override
  void initState() {
    super.initState();
    _loadUserProfile();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneNumberController = TextEditingController();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  Future<void> _loadUserProfile() async {
    try {
      final profile = await ShowUserProfileService().showUserProfile();
      setState(() {
        user = profile;

        firstName = profile.firstName;
        lastName = profile.lastName;
        phoneNumber = profile.phoneNumber;
        sharedPreferences!.setString("location", profile.address ?? "");
        isLoading = false;
      });
    } catch (e) {
      Get.snackbar('Error', 'Failed to load profile: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> _updateProfile(String field, String value) async {
    try {
      await UpdateProfileService().updateProfile(
        firstName: field == "firstName" ? value : firstName,
        lastName: field == "lastName" ? value : lastName,
        phoneNumber: field == "phoneNumber" ? value : phoneNumber,
      );
      Get.snackbar('Success', 'Profile updated successfully');
      setState(() {
        if (field == "firstName") firstName = value;
        if (field == "lastName") lastName = value;
        if (field == "phoneNumber") phoneNumber = value;
      });
    } catch (e) {
      Get.snackbar(
        'Error',
        'Failed to update profile: $e',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Edit Profile'),
        backgroundColor: Colors.white,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  if (user != null) Addimage(user: user!),
                  _buildEditableField(
                    label: "First Name",
                    value: firstName,
                    controller: firstNameController,
                    onSave: (value) => _updateProfile("firstName", value),
                  ),
                  const SizedBox(height: 10),
                  _buildEditableField(
                    label: "Last Name",
                    value: lastName,
                    controller: lastNameController,
                    onSave: (value) => _updateProfile("lastName", value),
                  ),
                  const SizedBox(height: 10),
                  _buildEditableField(
                    label: "Phone Number",
                    value: phoneNumber,
                    controller: phoneNumberController,
                    onSave: (value) => _updateProfile("phoneNumber", value),
                  ),
                  sharedPreferences!.getString("location")?.isNotEmpty == true
                      ? GetBuilder<EditProfileController>(
                          init: EditProfileController(),
                          builder: (controller) => Row(
                            children: [
                              Text(
                                'Current location: ${sharedPreferences!.getString("location")}',
                              ),
                            ],
                          ).paddingSymmetric(horizontal: 16, vertical: 5),
                        )
                      : Container(),
                  ListTile(
                    onTap: () async {
                      final isUpdated = await Get.to(() => const Address());
                      if (isUpdated == true) {
                        _loadUserProfile();
                      }
                    },
                    title: Text(
                        sharedPreferences!.getString("location")?.isNotEmpty !=
                                true
                            ? "Add your location"
                            : "Update your location"),
                    trailing: const Icon(Icons.location_on),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildEditableField({
    required String label,
    required String value,
    required TextEditingController controller,
    required void Function(String value) onSave,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text("$label: $value"),
        ),
        IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () {
            controller.text = value;
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Edit $label"),
                  content: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      labelText: label,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () {
                        final newValue = controller.text.trim();
                        if (newValue.isNotEmpty && newValue != value) {
                          onSave(newValue);
                        }
                        Navigator.pop(context);
                      },
                      child: const Text("Save"),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    ).paddingSymmetric(horizontal: 16, vertical: 3);
  }
}
