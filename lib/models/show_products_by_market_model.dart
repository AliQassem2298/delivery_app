import 'package:my_project/models/image_model.dart';

class ShowProductsByMarketModel {
  final List<DataProductModel> data;
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
          .map((item) => DataProductModel.fromJson(item))
          .toList(),
      message: json['message'],
      status: json['status'],
    );
  }
}

class DataProductModel {
  final int id;
  final String name;
  final String description;
  final String price;
  final String expiryDate;
  final ImageModel image;

  const DataProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.expiryDate,
    required this.image,
  });

  factory DataProductModel.fromJson(Map<String, dynamic> json) {
    return DataProductModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      expiryDate: json['expiry_date'],
      image: ImageModel.fromJson(json['image']),
    );
  }
}
