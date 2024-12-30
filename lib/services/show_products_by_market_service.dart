import 'package:my_project/helper/api.dart';
import 'package:my_project/main.dart';
import 'package:my_project/models/show_products_by_market_model.dart';

class ShowProductsByMarketService {
  Future<ShowProductsByMarketModel> showProductsByMarket({
    required int marketId,
  }) async {
    Map<String, dynamic> data = await Api().get(
      url: '$baseUrl/show_products/$marketId',
      token: sharedPreferences!.getString("token"),
    );
    return ShowProductsByMarketModel.fromJson(data);
  }
}
