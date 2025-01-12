import 'package:intl/intl.dart'; // Import for DateTime parsing

class CancelOrderModel {
  final int status;
  final String message;
  final OrderData order;

  CancelOrderModel({
    required this.status,
    required this.message,
    required this.order,
  });

  factory CancelOrderModel.fromJson(Map<String, dynamic> json) {
    return CancelOrderModel(
      status: json['status'] as int,
      message: json['message'] as String,
      order: OrderData.fromJson(json['order']),
    );
  }
}

class OrderData {
  final int id;
  final String status;
  final DateTime canceledAt;

  OrderData({
    required this.id,
    required this.status,
    required this.canceledAt,
  });

  factory OrderData.fromJson(Map<String, dynamic> json) {
    final dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSSSS'Z'");
    return OrderData(
      id: json['id'] as int,
      status: json['status'] as String,
      canceledAt: dateFormat.parse(json['canceled_at'] as String),
    );
  }
}
