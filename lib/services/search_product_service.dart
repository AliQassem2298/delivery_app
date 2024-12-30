// import 'package:my_project/helper/api.dart';
// import 'package:my_project/main.dart';
// import 'package:my_project/models/search_product_model%20copy.dart';

// class SearchProductService {
//   Future<SearchProductModel> searchProduct({
//     required String name,
//   }) async {
//     Map<String, dynamic> data = await Api().post(
//       url: '$baseUrl/search_product',
//       body: {
//         "name": name,
//       },
//       token: sharedPreferences!.getString("token"),
//     );
//     return SearchProductModel.fromJson(data);
//   }
// }
