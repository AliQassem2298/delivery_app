class ShowUserProfileModel {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String? address;
  final String image;

  ShowUserProfileModel({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.image,
    this.address,
  });

  factory ShowUserProfileModel.fromJson(Map<String, dynamic> json) {
    return ShowUserProfileModel(
      firstName: json['first_name'],
      lastName: json['last_name'],
      phoneNumber: json['phone_number'],
      address: json['address'],
      image: json['image'],
    );
  }
}
