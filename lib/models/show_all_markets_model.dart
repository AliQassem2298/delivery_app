import 'package:my_project/models/market_model.dart';

class ShowAllMarketsModel {
  final int status;
  final String message;
  final List<MarketModel> data;

  ShowAllMarketsModel({
    required this.status,
    required this.message,
    required this.data,
  });
  factory ShowAllMarketsModel.fromJson(jsonData) {
    return ShowAllMarketsModel(
      status: jsonData['status'],
      message: jsonData['message'],
      data: (jsonData['data'] as List)
          .map((locationJson) => MarketModel.fromJson(locationJson))
          .toList(),
    );
  }
}
