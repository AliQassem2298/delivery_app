// ignore_for_file: missing_required_param

import 'package:my_project/helper/api.dart';
import 'package:my_project/models/modify_order_model.dart';

class ModifyOrderService {
  Future<ModifyOrderModel> modifyOrder({
    required int orderId,
    required String address,
    required List<Map<String, dynamic>> products,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: '$baseUrl/modifyOrder/$orderId',
      body: {
        "address": address,
        "products": products,
      },
    );
    return ModifyOrderModel.fromJson(data);
  }
}
