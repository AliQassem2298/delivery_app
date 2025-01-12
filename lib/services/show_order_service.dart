import 'package:my_project/helper/api.dart';
import 'package:my_project/main.dart';
import 'package:my_project/models/show_order_model.dart';

class ShowOrderService {
  Future<ShowOrderModel> showOrder() async {
    Map<String, dynamic> data = await Api().get(
      url: '$baseUrl/show_order',
      token: sharedPreferences!.getString("token"),
    );
    return ShowOrderModel.fromJson(data);
  }
}
