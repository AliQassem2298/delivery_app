// import 'package:my_project/helper/api.dart';
// import 'package:my_project/main.dart';
// import 'package:my_project/models/search_market_model.dart';

// class SearchMarketService {
//   Future<SearchMarkettModel> searchMarket({
//     required String name,
//   }) async {
//     Map<String, dynamic> data = await Api().post(
//       url: '$baseUrl/search_market',
//       body: {
//         "name": name,
//       },
//       token: sharedPreferences!.getString("token"),
//     );
//     return SearchMarkettModel.fromJson(data);
//   }
// }
