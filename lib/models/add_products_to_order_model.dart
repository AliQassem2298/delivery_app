class AddProductsToOrderModel {
  final String message;
  final int status;
  final String orderStatus;

  const AddProductsToOrderModel({
    required this.message,
    required this.status,
    required this.orderStatus,
  });

  factory AddProductsToOrderModel.fromJson(Map<String, dynamic> json) {
    return AddProductsToOrderModel(
      message: json['message'],
      status: json['status'],
      orderStatus: json['order_status'],
    );
  }
}