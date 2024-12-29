import 'package:my_project/helper/api.dart';
import 'package:my_project/main.dart';
import 'package:my_project/models/show_all_markets_model.dart';

class ShowAllMarketsService {
  Future<ShowAllMarketsModel> showAllMarkets() async {
    Map<String, dynamic> data = await Api().get(
      url: '$baseUrl/show_all_markets',
      token: sharedPreferences!.getString("token"),
    );
    return ShowAllMarketsModel.fromJson(data);
  }
}
