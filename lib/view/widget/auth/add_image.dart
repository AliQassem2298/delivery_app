// ignore_for_file: avoid_print

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_project/helper/api.dart';
import 'package:my_project/models/show_user_profile_model.dart';
import 'package:my_project/services/upload_profile_image_service.dart';
import 'package:get/get.dart';

class Addimage extends StatefulWidget {
  final ShowUserProfileModel user; // استقبال كائن المستخدم

  const Addimage({super.key, required this.user});

  @override
  State<Addimage> createState() => _AddimageState();
}

class _AddimageState extends State<Addimage> {
  File? _file;
  bool isUploading = false; // حالة تحميل الصورة

  // اختيار الصورة من المعرض
  void pickercamera() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _file = File(pickedFile.path);
      });
      uploadImage(_file!); // رفع الصورة بعد الاختيار
    }
  }

  // رفع الصورة إلى السيرفر
  Future<void> uploadImage(File imageFile) async {
    setState(() {
      isUploading = true; // بدء التحميل
    });
    try {
      final response =
          await UploadProfileImageService().uploadProfileImage(imageFile);
      Get.snackbar(
          'Success', 'Image uploaded successfully: ${response.message}');
    } catch (e) {
      print(e);
      Get.snackbar('Error', 'Failed to upload image: $e');
    } finally {
      setState(() {
        isUploading = false; // إنهاء التحميل
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(300)),
                child: _file != null
                    ? Image.file(
                        _file!,
                        fit: BoxFit.cover,
                        width: 200,
                        height: 200,
                      )
                    : Image.network(
                        '$baseUrlImage/${widget.user.image}',
                        fit: BoxFit.cover,
                        width: 200,
                        height: 200,
                      ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.camera_alt),
                  onPressed: pickercamera,
                ),
              ),
              if (isUploading)
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
