// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/models/product_model.dart';
import 'package:my_project/models/show_products_by_market_model.dart';
import 'package:my_project/services/show_favorite_service.dart';

import 'package:my_project/view/widget/favorite_custom_card.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Products'),
      ),
      body: FutureBuilder<ShowProductsByMarketModel>(
        future: ShowFavoriteService().showFavorite(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: const CircularProgressIndicator()
                  .paddingSymmetric(vertical: 250),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            );
          } else if (snapshot.hasData) {
            if (snapshot.data!.data.isEmpty) {
              return const Center(
                child: Text(
                  'No Favorite Products found',
                  style: TextStyle(fontSize: 12),
                ),
              );
            } else {
              List<ProductModel> favoriteProducts = snapshot.data!.data;

              return GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(bottom: 5),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: favoriteProducts.length,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  return FavoriteProductCard(
                    product: favoriteProducts[index],
                  ).paddingOnly(left: 8, right: 8);
                },
              );
            }
          } else {
            return Center(
              child: const CircularProgressIndicator()
                  .paddingSymmetric(vertical: 250),
            );
          }
        },
      ),
    );
  }
}
