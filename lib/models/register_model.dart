import 'package:my_project/main.dart';

class RegisterModel {
  final int status;
  final UserDataModelFromRegister data;
  final String message;

  RegisterModel({
    required this.status,
    required this.data,
    required this.message,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      status: json['status'],
      data: UserDataModelFromRegister.fromJson(json['data']),
      message: json['message'],
    );
  }
}

class UserDataModelFromRegister {
  final UserModelFromRegister user;
  final String token;

  UserDataModelFromRegister({
    required this.user,
    required this.token,
  });

  factory UserDataModelFromRegister.fromJson(Map<String, dynamic> json) {
    sharedPreferences!.setString("token", json['token']);

    return UserDataModelFromRegister(
      user: UserModelFromRegister.fromJson(json['user']),
      token: json['token'],
    );
  }
}

class UserModelFromRegister {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final int id;
  final UserImage image;

  UserModelFromRegister({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.id,
    required this.image,
  });

  factory UserModelFromRegister.fromJson(Map<String, dynamic> json) {
    sharedPreferences!.setString("first_name", json['first_name']);
    sharedPreferences!.setString("last_name", json['last_name']);
    sharedPreferences!.setString("phone_number", json['phone_number']);

    return UserModelFromRegister(
      firstName: json['first_name'],
      lastName: json['last_name'],
      phoneNumber: json['phone_number'],
      id: json['id'],
      image: UserImage.fromJson(json['image']),
    );
  }
}

class UserImage {
  final int id;
  final String path;

  UserImage({
    required this.id,
    required this.path,
  });

  factory UserImage.fromJson(Map<String, dynamic> json) {
    return UserImage(
      id: json['id'],
      path: json['path'],
    );
  }
}
