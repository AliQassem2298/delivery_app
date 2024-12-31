import 'package:my_project/helper/api.dart';
import 'package:my_project/main.dart';
import 'package:my_project/models/search_market_or_product_model.dart';

class SearchMarketOrProductService {
  Future<SearchMarketOrProductModel> searchMarketOrProduct({
    required String name,
  }) async {
    Map<String, dynamic> data = await Api().get(
      url: '$baseUrl/search?name=$name',
      token: sharedPreferences!.getString("token"),
    );
    return SearchMarketOrProductModel.fromJson(data);
  }
}
