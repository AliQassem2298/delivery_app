class ShowOrderModel {
  final int status;
  final String message;
  final List<Order> orders;

  ShowOrderModel({
    required this.status,
    required this.message,
    required this.orders,
  });

  factory ShowOrderModel.fromJson(Map<String, dynamic> json) {
    final ordersList = json['orders'] as List;
    return ShowOrderModel(
      status: json['status'] as int,
      message: json['message'] as String,
      orders: ordersList.map((item) => Order.fromJson(item)).toList(),
    );
  }
}

class Order {
  final int id;
  final int userId;
  final String status;
  final String? firebaseToken; //Allowing for null firebase tokens
  final List<ProductItem> products;

  Order({
    required this.id,
    required this.userId,
    required this.status,
    this.firebaseToken,
    required this.products,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    final productsList = json['products'] as List;
    return Order(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      status: json['status'] as String,
      firebaseToken: json['firebase_token'] as String?,
      products: productsList.map((item) => ProductItem.fromJson(item)).toList(),
    );
  }
}

class ProductItem {
  final int id;
  final String name;
  final double quantity; //Use double to handle decimal quantities
  final double totalCost; //Use double to handle decimal costs
  final Pivot pivot;

  ProductItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.totalCost,
    required this.pivot,
  });

  factory ProductItem.fromJson(Map<String, dynamic> json) {
    return ProductItem(
      id: json['id'] as int,
      name: json['name'] as String,
      quantity: double.parse(json['quantity']), //Parse quantity as double
      totalCost: double.parse(json['total_cost']), //Parse totalCost as double
      pivot: Pivot.fromJson(json['pivot']),
    );
  }
}

class Pivot {
  final int orderId;
  final int productId;

  Pivot({
    required this.orderId,
    required this.productId,
  });

  factory Pivot.fromJson(Map<String, dynamic> json) {
    return Pivot(
      orderId: json['order_id'] as int,
      productId: json['product_id'] as int,
    );
  }
}
