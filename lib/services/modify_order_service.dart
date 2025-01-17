// ignore_for_file: missing_required_param

import 'package:my_project/helper/api.dart';
import 'package:my_project/main.dart';
import 'package:my_project/models/modify_order_model.dart';

class ModifyOrderService {
  Future<ModifyOrderModel> modifyOrderQuantity({
    required int orderId,
    required List<Map<String, dynamic>> products,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: '$baseUrl/modifyOrder/$orderId',
      body: {
        "products": products,
      },
      token: sharedPreferences!.getString("token"),
    );
    return ModifyOrderModel.fromJson(data);
  }
}
