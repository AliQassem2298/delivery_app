import 'package:my_project/models/image_model.dart';

class UploadProfileImageModel {
  final int status;
  final String message;
  final ImageModel image;

  UploadProfileImageModel({
    required this.status,
    required this.message,
    required this.image,
  });

  factory UploadProfileImageModel.fromJson(Map<String, dynamic> json) {
    return UploadProfileImageModel(
      status: json['status'],
      image: ImageModel.fromJson(json['image']),
      message: json['message'],
    );
  }
}
