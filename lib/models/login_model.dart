import 'package:my_project/main.dart';

class LoginModel {
  final int status;
  final UserDataModelFromLogin data;
  final String message;

  LoginModel({
    required this.status,
    required this.data,
    required this.message,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      status: json['status'],
      data: UserDataModelFromLogin.fromJson(json['data']),
      message: json['message'],
    );
  }
}

class UserDataModelFromLogin {
  final UserModelFromLogin user;
  final String token;

  UserDataModelFromLogin({required this.user, required this.token});

  factory UserDataModelFromLogin.fromJson(Map<String, dynamic> json) {
    sharedPreferences!.setString("token", json['token']);

    return UserDataModelFromLogin(
      user: UserModelFromLogin.fromJson(json['user']),
      token: json['token'],
    );
  }
}

class UserModelFromLogin {
  final int id;
  final String firstName;
  final String lastName;
  final String phoneNumber;

  UserModelFromLogin({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
  });

  factory UserModelFromLogin.fromJson(Map<String, dynamic> json) {
    sharedPreferences!.setString("first_name", json['first_name']);
    sharedPreferences!.setString("last_name", json['last_name']);
    sharedPreferences!.setString("phone_number", json['phone_number']);

    return UserModelFromLogin(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      phoneNumber: json['phone_number'],
    );
  }
}
