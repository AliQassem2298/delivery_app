import 'package:my_project/helper/api.dart';
import 'package:my_project/main.dart';
import 'package:my_project/models/update_profile_model.dart';

class UpdateProfileService {
  Future<UpdateProfileModel> updateProfile({
    required String firstName,
    required String lastName,
    required String phoneNumber,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: '$baseUrl/UpdateProfile',
      body: {
        "first_name": firstName,
        "last_name": lastName,
        "phone_number": phoneNumber,
      },
      token: sharedPreferences!.getString("token"),
    );
    return UpdateProfileModel.fromJson(data);
  }
}
