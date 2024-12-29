import 'package:my_project/helper/api.dart';
import 'package:my_project/main.dart';
import 'package:my_project/models/update_address_model.dart';

class UpdateAddressService {
  Future<UpdateAddressModel> updateAddress({required String location}) async {
    Map<String, dynamic> data = await Api().post(
      url: '$baseUrl/address/update',
      body: {
        "location": location,
      },
      token: sharedPreferences!.getString("token"),
    );
    return UpdateAddressModel.fromJson(data);
  }
}
