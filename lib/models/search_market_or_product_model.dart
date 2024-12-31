import 'package:my_project/models/market_model.dart';
import 'package:my_project/models/product_model.dart';

class SearchMarketOrProductModel {
  final int status;
  final String message;
  final DataModel data;

  SearchMarketOrProductModel({
    required this.status,
    required this.message,
    required this.data,
  });
  factory SearchMarketOrProductModel.fromJson(jsonData) {
    return SearchMarketOrProductModel(
      status: jsonData['status'],
      message: jsonData['message'],
      data: DataModel.fromJson(jsonData['data']),
    );
  }
}

class DataModel {
  final List<MarketModel> markets;
  final List<ProductModel> products;

  const DataModel({
    required this.markets,
    required this.products,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      markets: (json['markets'] as List<dynamic>)
          .map((marketJson) => MarketModel.fromJson(marketJson))
          .toList(),
      products: (json['products'] as List<dynamic>)
          .map((productJson) => ProductModel.fromJson(productJson))
          .toList(),
    );
  }
}
