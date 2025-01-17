// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/helper/api.dart';
import 'package:my_project/models/market_model.dart';
import 'package:my_project/models/product_model.dart';
import 'package:my_project/services/add_products_to_order_service.dart';
import 'package:my_project/view/screens/cart.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({
    super.key,
    required this.product,
    required this.market,
  });
  final MarketModel market;
  final ProductModel product;

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int productCount = 1;
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
    // bool isMarketAvailable = widget.market.id != -1;

    return ModalProgressHUD(
      inAsyncCall: isLoading.value,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Product Details',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: APPColor.primarycolor,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    height: 250,
                    width: 250,
                    fit: BoxFit.cover,
                    '$baseUrlImage/${widget.product.image.path}',
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.error);
                    },
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                widget.product.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                widget.product.description,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Price: \$${widget.product.price}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Expiry Date: ${widget.product.expiryDate}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove_circle_outline),
                        onPressed: () {
                          setState(() {
                            if (productCount > 1) {
                              productCount--;
                            }
                          });
                        },
                      ),
                      Text(
                        productCount.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_circle_outline),
                        onPressed: () {
                          setState(() {
                            productCount++;
                          });
                        },
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      loadingIndicatorTrue();

                      try {
                        await AddProductsToOrderService().addProductsToOrder(
                          quantity: productCount,
                          marketId: widget.market.id
                          // ?? widget.product.marketId!
                          ,
                          productId: widget.product.id,
                        );
                        print('Success');
                        loadingIndicatorFalse();
                        Get.snackbar(
                          'In preparation',
                          'Product added to cart successfully',
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
                    }, // تعطيل الزر إذا كان المتجر غير متاح
                    style: ElevatedButton.styleFrom(
                      backgroundColor: APPColor.primarycolor,
                    ),
                    child: const Text(
                      'Add to Order',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => const Cart());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: APPColor.primarycolor,
                    ),
                    child: const Text(
                      'My Orders',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ).paddingOnly(top: 16)
            ],
          ),
        ),
      ),
    );
  }
}
