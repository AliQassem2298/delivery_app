class ModifyOrderModel {
  final int status;
  final String message;
  final List<OrderItem> order; // Note: order is now a List<OrderItem>

  ModifyOrderModel({
    required this.status,
    required this.message,
    required this.order,
  });

  factory ModifyOrderModel.fromJson(Map<String, dynamic> json) {
    final orderList =
        json['order'] as List; //Handle potential empty order array

    return ModifyOrderModel(
      status: json['status'] as int,
      message: json['message'] as String,
      order: orderList.isEmpty
          ? [] //Return empty list if order array is empty
          : orderList.map((item) => OrderItem.fromJson(item)).toList(),
    );
  }
}

class OrderItem {
  final int id;
  final String name;
  final double quantity;
  final double totalCost;
  final Pivot pivot;

  OrderItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.totalCost,
    required this.pivot,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
      id: json['id'] as int,
      name: json['name'] as String,
      quantity: double.parse(json['quantity']),
      totalCost: double.parse(json['total_cost']),
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
