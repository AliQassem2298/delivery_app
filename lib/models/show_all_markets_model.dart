class ShowAllMarketsModel {
  final int status;
  final String message;
  final List<DataFromAllMarketsModel> data;

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
          .map((locationJson) => DataFromAllMarketsModel.fromJson(locationJson))
          .toList(),
    );
  }
}

class DataFromAllMarketsModel {
  final int id;
  final String name;
  final String description;
  final String address;

  DataFromAllMarketsModel({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
  });

  factory DataFromAllMarketsModel.fromJson(jsonData) {
    return DataFromAllMarketsModel(
      id: jsonData['id'],
      name: jsonData['name'],
      description: jsonData['description'],
      address: jsonData['address'],
    );
  }
}
