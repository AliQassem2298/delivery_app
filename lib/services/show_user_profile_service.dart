import 'package:my_project/helper/api.dart';
import 'package:my_project/main.dart';
import 'package:my_project/models/show_user_profile_model.dart';

class ShowUserProfileService {
  Future<ShowUserProfileModel> showUserProfile() async {
    Map<String, dynamic> data = await Api().get(
      url: '$baseUrl/ShowUserProfile',
      token: sharedPreferences!.getString("token"),
    );
    return ShowUserProfileModel.fromJson(data);
  }
}
