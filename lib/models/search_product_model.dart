// class SearchProductModel {
//   final int status;
//   final String message;
//   final List<DataProductModelFromSearchProduct> data;

//   const SearchProductModel({
//     required this.status,
//     required this.message,
//     required this.data,
//   });

//   factory SearchProductModel.fromJson(Map<String, dynamic> json) {
//     return SearchProductModel(
//       status: json['status'],
//       message: json['message'],
//       data: (json['data'] as List)
//           .map((item) => DataProductModelFromSearchProduct.fromJson(item))
//           .toList(),
//     );
//   }
// }

// class DataProductModelFromSearchProduct {
//   final int id;
//   final String name;
//   final String description;
//   final String price;
//   final String expiryDate;

//   const DataProductModelFromSearchProduct({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.price,
//     required this.expiryDate,
//   });

//   factory DataProductModelFromSearchProduct.fromJson(Map<String, dynamic> json) {
//     return DataProductModelFromSearchProduct(
//       id: json['id'],
//       name: json['name'],
//       description: json['description'],
//       price: json['price'],
//       expiryDate: json['expiry_date'],
//     );
//   }
// }
