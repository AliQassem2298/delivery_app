// ignore_for_file: missing_required_param

import 'package:my_project/helper/api.dart';
import 'package:my_project/main.dart';
import 'package:my_project/models/cancel_order_model.dart';

class CancelOrderService {
  Future<CancelOrderModel> cancelOrder({
    required int orderId,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: '$baseUrl/cancelOrder/$orderId',
      token: sharedPreferences!.getString("token"),
    );
    return CancelOrderModel.fromJson(data);
  }
}
