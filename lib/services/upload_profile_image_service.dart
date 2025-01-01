import 'dart:io';
import 'package:my_project/helper/api.dart';
import 'package:my_project/main.dart';
import 'package:my_project/models/upload_profile_image_model.dart';

class UploadProfileImageService {
  Future<UploadProfileImageModel> uploadProfileImage(File imageFile) async {
    final data = await Api().postMultipart(
      url: '$baseUrl/user/profile-image',
      imageFile: imageFile,
      token: sharedPreferences!.getString("token"),
    );
    return UploadProfileImageModel.fromJson(data);
  }
}
