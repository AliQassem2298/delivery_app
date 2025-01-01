// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/helper/api.dart';
import 'package:my_project/models/product_model.dart';
import 'package:my_project/services/remove_product_from_favorite_service.dart';

class FavoriteProductCard extends StatelessWidget {
  FavoriteProductCard({
    required this.product,
    super.key,
  });

  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.network('$baseUrlImage/${product.image.path}'),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: APPColor.primarycolor,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ ${product.price}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: APPColor.primarycolor,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    IconButton(
                      icon: const Icon(Icons.favorite, color: Colors.red),
                      onPressed: () async {
                        // استدعاء API لإزالة المنتج من المفضلة
                        await RemoveProductFromFavoriteService()
                            .removeProductFromFavorite(
                          productId: product.id,
                        );
                        // إعادة تحميل الصفحة بعد إزالة المنتج
                        Get.forceAppUpdate();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
