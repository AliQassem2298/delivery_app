import 'package:my_project/main.dart';

class UpdateAddressModel {
  final int status;
  final String message;
  final AddressFromUpdateModel address;
  UpdateAddressModel({
    required this.status,
    required this.address,
    required this.message,
  });

  factory UpdateAddressModel.fromJson(Map<String, dynamic> json) {
    return UpdateAddressModel(
      status: json['status'],
      address: AddressFromUpdateModel.fromJson(json['address']),
      message: json['message'],
    );
  }
}

class AddressFromUpdateModel {
  final String location;
  final int userId;
  final int id;

  AddressFromUpdateModel({
    required this.location,
    required this.userId,
    required this.id,
  });

  factory AddressFromUpdateModel.fromJson(Map<String, dynamic> json) {
    sharedPreferences!.setString("location", json['location']);

    return AddressFromUpdateModel(
      location: json['location'],
      userId: json['user_id'],
      id: json['id'],
    );
  }
}
