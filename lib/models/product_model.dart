import 'package:my_project/models/image_model.dart';

class ProductModel {
  final int id;
  final String name;
  final String description;
  final String price;
  final String expiryDate;
  final ImageModel image;
  final int? marketId; // إضافة marketId

  const ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.expiryDate,
    required this.image,
    this.marketId, // تعديل هنا
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      expiryDate: json['expiry_date'],
      image: ImageModel.fromJson(json['image']),
      marketId: json['market_id'],
    );
  }
}
