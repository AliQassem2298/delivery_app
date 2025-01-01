// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/helper/api.dart';
import 'package:my_project/models/market_model.dart';
import 'package:my_project/view/screens/auth/products/product_page.dart';

class Store extends StatelessWidget {
  Store({
    super.key,
    // required this.images,
    // required this.names,
    // this.price = '',
    // this.onFavoritePressed,
    required this.market,
  });

  // final String images;
  // final String names;
  // final String price;
  // final VoidCallback? onFavoritePressed;
  MarketModel market;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => ProductsPage(
              market: market,
            ));
      },
      child: Card(
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Image.network('$baseUrlImage/${market.image.path}')),
            const SizedBox(height: 10),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      market.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: APPColor.primarycolor,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
