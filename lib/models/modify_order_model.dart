// class OrderQuantityModificationResponse {
//   final int status;
//   final String message;
//   final List<Product> products;

//   OrderQuantityModificationResponse({
//     required this.status,
//     required this.message,
//     required this.products,
//   });

//   factory OrderQuantityModificationResponse.fromJson(Map<String, dynamic> json) {
//     try {
//       final List<dynamic> productJsonList = json['products'] as List<dynamic>? ?? []; // Handle null or missing "products"
//       final List<Product> productsList = productJsonList.map((productJson) {
//         return Product.fromJson(productJson as Map<String, dynamic>);
//       }).toList();

//       return OrderQuantityModificationResponse(
//         status: json['status'] as int,
//         message: json['message'] as String,
//         products: productsList,
//       );
//     } catch (e) {
//       print("Error parsing OrderQuantityModificationResponse: $e");
//       rethrow; // Re-throw for higher-level handling
//     }
//   }

//   Map<String, dynamic> toJson() => {
//         'status': status,
//         'message': message,
//         'products': products.map((p) => p.toJson()).toList(),
//       };

//   @override
//   String toString() =>
//       'OrderQuantityModificationResponse(status: $status, message: $message, products: $products)';
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
//     try {
//       return Product(
//         id: json['id'] as int,
//         orderId: json['order_id'] as int,
//         productId: json['product_id'] as int,
//         quantity: double.parse(json['quantity'] as String),
//         price: double.parse(json['price'] as String),
//         totalCost: double.parse(json['total_cost'] as String),
//         createdAt: _parseNullableDateTime(json['created_at']),
//         updatedAt: _parseNullableDateTime(json['updated_at']),
//       );
//     } catch (e) {
//       print('Error parsing Product: $e');
//       rethrow; // Re-throw for higher-level error handling
//     }
//   }

//   Map<String, dynamic> toJson() => {
//         'id': id,
//         'order_id': orderId,
//         'product_id': productId,
//         'quantity': quantity.toString(),
//         'price': price.toString(),
//         'total_cost': totalCost.toString(),
//         'created_at': createdAt?.toIso8601String(),
//         'updated_at': updatedAt?.toIso8601String(),
//       };

//   @override
//   String toString() =>
//       'Product(id: $id, orderId: $orderId, productId: $productId, quantity: $quantity, price: $price, totalCost: $totalCost, createdAt: $createdAt, updatedAt: $updatedAt)';
// }

// // Helper function to parse nullable DateTime strings
// DateTime? _parseNullableDateTime(dynamic value) {
//   if (value == null) {
//     return null;
//   }
//   if (value is String) {
//     return DateTime.tryParse(value);
//   }
//   return null; // Or throw an error if you expect a specific format.
// }

class ModifyOrderModel {
  final int status;
  final String message;
  final List<Product> products;

  ModifyOrderModel({
    required this.status,
    required this.message,
    required this.products,
  });

  factory ModifyOrderModel.fromJson(Map<String, dynamic> json) {
    final List<dynamic> productJsonList = json['products'] as List<dynamic>? ??
        []; // Handle null or missing "products"
    final List<Product> productsList = productJsonList.map((productJson) {
      return Product.fromJson(productJson as Map<String, dynamic>);
    }).toList();

    return ModifyOrderModel(
      status: json['status'] as int,
      message: json['message'] as String,
      products: productsList,
    );
  }
}

class Product {
  final int id;
  final int orderId;
  final int productId;
  final double quantity;
  final double price;
  final double totalCost;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Product({
    required this.id,
    required this.orderId,
    required this.productId,
    required this.quantity,
    required this.price,
    required this.totalCost,
    this.createdAt,
    this.updatedAt,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      orderId: json['order_id'] as int,
      productId: json['product_id'] as int,
      quantity: double.parse(json['quantity'] as String),
      price: double.parse(json['price'] as String),
      totalCost: double.parse(json['total_cost'] as String),
      createdAt: _parseNullableDateTime(json['created_at']),
      updatedAt: _parseNullableDateTime(json['updated_at']),
    );
  }
}

DateTime? _parseNullableDateTime(dynamic value) {
  if (value == null) {
    return null;
  }
  if (value is String) {
    return DateTime.tryParse(value);
  }
  return null; // Or throw an error if you expect a specific format.
}
