// class ModifyOrderModel {
//   final int status;
//   final String message;
//   final List<Product> products;

//   ModifyOrderModel({
//     required this.status,
//     required this.message,
//     required this.products,
//   });

//   factory ModifyOrderModel.fromJson(Map<String, dynamic> json) {
//     final List<dynamic> productJsonList = json['products'] as List<dynamic>? ??
//         []; // Handle null or missing "products"
//     final List<Product> productsList = productJsonList.map((productJson) {
//       return Product.fromJson(productJson as Map<String, dynamic>);
//     }).toList();

//     return ModifyOrderModel(
//       status: json['status'] as int,
//       message: json['message'] as String,
//       products: productsList,
//     );
//   }
// }

// class Product {
//   final int id;
//   final int orderId;
//   final int productId;
//   final double quantity;
//   final double price;
//   final double totalCost;
//   final DateTime? createdAt;
//   final DateTime? updatedAt;

//   Product({
//     required this.id,
//     required this.orderId,
//     required this.productId,
//     required this.quantity,
//     required this.price,
//     required this.totalCost,
//     this.createdAt,
//     this.updatedAt,
//   });

//   factory Product.fromJson(Map<String, dynamic> json) {
//     return Product(
//       id: json['id'] as int,
//       orderId: json['order_id'] as int,
//       productId: json['product_id'] as int,
//       quantity: double.parse(json['quantity'] as String),
//       price: double.parse(json['price'] as String),
//       totalCost: double.parse(json['total_cost'] as String),
//       createdAt: _parseNullableDateTime(json['created_at']),
//       updatedAt: _parseNullableDateTime(json['updated_at']),
//     );
//   }
// }

// DateTime? _parseNullableDateTime(dynamic value) {
//   if (value == null) {
//     return null;
//   }
//   if (value is String) {
//     return DateTime.tryParse(value);
//   }
//   return null; // Or throw an error if you expect a specific format.
// }
