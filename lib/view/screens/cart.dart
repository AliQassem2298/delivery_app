// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/services/cancel_order_service.dart';
import 'package:my_project/view/widget/cart/customitemcartlist.dart';
import 'package:my_project/services/show_order_service.dart';
import 'package:my_project/models/show_order_model.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  Future<ShowOrderModel> _fetchOrders() async {
    try {
      return await ShowOrderService().showOrder();
    } catch (e) {
      // Handle any exceptions that might occur
      return ShowOrderModel(
          status: 500, message: "Error fetching orders", orders: []);
    }
  }

  RxBool isLoading = false.obs;

  void loadingIndicatorFalse() {
    isLoading.value = false;
    setState(() {});
  }

  void loadingIndicatorTrue() {
    isLoading.value = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Orders"),
      ),
      body: FutureBuilder<ShowOrderModel>(
        future: _fetchOrders(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text("Error loading orders"));
          } else if (!snapshot.hasData || snapshot.data!.orders.isEmpty) {
            return const Center(child: Text("No orders available"));
          }

          final orders = snapshot.data!.orders;

          return ListView(
            children: [
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: orders.map((order) {
                    return Column(
                      children: order.products.map((product) {
                        final isCanceled =
                            order.status.toLowerCase() == 'canceled';
                        return Customitemcartlist(
                          name: product.name,
                          price: '${product.totalCost}\$',
                          count: '${product.quantity}',
                          onAdd: isCanceled
                              ? null
                              : () {
                                  // Logic for incrementing the quantity
                                },
                          onRemove: isCanceled
                              ? null
                              : () {
                                  // Logic for decrementing the quantity
                                },
                          status: order.status,
                          isCanceled: isCanceled,
                          onDelete: () async {
                            loadingIndicatorTrue();

                            try {
                              await CancelOrderService()
                                  .cancelOrder(orderId: order.id);

                              print('Success');
                              loadingIndicatorFalse();
                              Get.snackbar(
                                'Hi',
                                'Order has been canceled successfully',
                              );
                            } catch (e) {
                              print(e.toString());
                              Get.snackbar(
                                'Sorry',
                                e.toString(),
                                colorText: Colors.white,
                                backgroundColor: Colors.red,
                              );
                            }
                            loadingIndicatorFalse();
                          },
                        );
                      }).toList(),
                    );
                  }).toList(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
