// class SearchMarkettModel {
//   final int status;
//   final String message;
//   final List<DataProductModelFromSearchMarket> data;

//   const SearchMarkettModel({
//     required this.status,
//     required this.message,
//     required this.data,
//   });

//   factory SearchMarkettModel.fromJson(Map<String, dynamic> json) {
//     return SearchMarkettModel(
//       status: json['status'],
//       message: json['message'],
//       data: (json['data'] as List)
//           .map((item) => DataProductModelFromSearchMarket.fromJson(item))
//           .toList(),
//     );
//   }
// }

// class DataProductModelFromSearchMarket {
//   final int id;
//   final String name;
//   final String description;
//   final String address;

//   const DataProductModelFromSearchMarket({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.address,
//    });

//   factory DataProductModelFromSearchMarket.fromJson(Map<String, dynamic> json) {
//     return DataProductModelFromSearchMarket(
//       id: json['id'],
//       name: json['name'],
//       description: json['description'],
//       address: json['address'],
//     );
//   }
// }
