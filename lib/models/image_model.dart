class ImageModel {
  final int id;
  final String path;

  const ImageModel({
    required this.id,
    required this.path,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      id: json['id'],
      path: json['path'],
    );
  }
}
