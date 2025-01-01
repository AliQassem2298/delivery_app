// ignore_for_file: missing_required_param

import 'package:my_project/helper/api.dart';
import 'package:my_project/main.dart';
import 'package:my_project/models/add_product_to_favorite_model.dart';

class RemoveProductFromFavoriteService {
  Future<AddProductToFavoriteModel> removeProductFromFavorite({
    required int productId,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: '$baseUrl/remove/favorites/$productId',
      token: sharedPreferences!.getString("token"),
    );

    return AddProductToFavoriteModel.fromJson(data);
  }
}
