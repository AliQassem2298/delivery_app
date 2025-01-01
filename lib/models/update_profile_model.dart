class UpdateProfileModel {
  final String message;
  final UserModelFromUpdate user;

  UpdateProfileModel({
    required this.message,
    required this.user,
  });

  factory UpdateProfileModel.fromJson(Map<String, dynamic> json) {
    return UpdateProfileModel(
      user: UserModelFromUpdate.fromJson(json['user']),
      message: json['message'],
    );
  }
}

class UserModelFromUpdate {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String profileImage;

  UserModelFromUpdate({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.profileImage,
  });

  factory UserModelFromUpdate.fromJson(Map<String, dynamic> json) {
    // sharedPreferences!.setString("first_name", json['first_name']);
    // sharedPreferences!.setString("last_name", json['last_name']);
    // sharedPreferences!.setString("phone_number", json['phone_number']);

    return UserModelFromUpdate(
      firstName: json['first_name'],
      lastName: json['last_name'],
      phoneNumber: json['phone_number'],
      profileImage: json['profile_image'],
    );
  }
}
