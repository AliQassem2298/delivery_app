class AddProductToFavoriteModel {

final String message;
  final int status;

  const AddProductToFavoriteModel({
    required this.message,
    required this.status,
  });

  factory AddProductToFavoriteModel.fromJson(Map<String, dynamic> json) {
    return AddProductToFavoriteModel(
      message: json['message'],
      status: json['status'],
    );
  }
}

