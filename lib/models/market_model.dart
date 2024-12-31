import 'package:my_project/models/image_model.dart';

class MarketModel {
  final int id;
  final String name;
  final String description;
  final String address;
  final ImageModel image;

  MarketModel({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.image,
  });

  factory MarketModel.fromJson(jsonData) {
    return MarketModel(
      id: jsonData['id'],
      name: jsonData['name'],
      description: jsonData['description'],
      address: jsonData['address'],
      image: ImageModel.fromJson(jsonData['image']),
    );
  }
}
