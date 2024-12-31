import 'package:my_project/helper/api.dart';
import 'package:my_project/main.dart';
import 'package:my_project/models/add_products_to_order_model.dart';

class AddProductsToOrderService {
  Future<AddProductsToOrderModel> addProductsToOrder({
    required int quantity,
    required int marketId,
    required int productId,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: '$baseUrl/add_to_order/$productId',
      body: {
        "quantity": quantity,
        "market_id": marketId,
      },
      token: sharedPreferences!.getString("token"),
    );
    return AddProductsToOrderModel.fromJson(data);
  }
}
