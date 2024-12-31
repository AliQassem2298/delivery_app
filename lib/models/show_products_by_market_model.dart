import 'package:my_project/models/product_model.dart';

class ShowProductsByMarketModel {
  final List<ProductModel> data;
  final String message;
  final int status;

  const ShowProductsByMarketModel({
    required this.data,
    required this.message,
    required this.status,
  });

  factory ShowProductsByMarketModel.fromJson(Map<String, dynamic> json) {
    return ShowProductsByMarketModel(
      data: (json['data'] as List)
          .map((item) => ProductModel.fromJson(item))
          .toList(),
      message: json['message'],
      status: json['status'],
    );
  }
}
