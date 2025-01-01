// ignore_for_file: use_super_parameters, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/helper/api.dart';
import 'package:my_project/models/market_model.dart';
import 'package:my_project/models/product_model.dart';
import 'package:my_project/services/add_product_to_favorite_service.dart';
import 'package:my_project/services/remove_product_from_favorite_service.dart';
import 'package:my_project/services/favorite_service.dart';
import 'package:my_project/view/widget/auth/productdetailspage.dart';

class CustomProduct extends StatefulWidget {
  final ProductModel product;
  final MarketModel market;

  const CustomProduct({
    required this.product,
    required this.market,
    Key? key,
  }) : super(key: key);

  @override
  _CustomProductState createState() => _CustomProductState();
}

class _CustomProductState extends State<CustomProduct> {
  late bool isFavorite = false; // حالة المنتج إذا كان في المفضلة

  @override
  void initState() {
    super.initState();
    _loadFavoriteStatus(); // تحميل حالة المفضلة
  }

  // تحميل حالة المفضلة من التخزين المحلي
  Future<void> _loadFavoriteStatus() async {
    final favoriteService = FavoriteService();
    bool favoriteStatus = await favoriteService.isFavorite(widget.product.id);
    setState(() {
      isFavorite = favoriteStatus;
    });
  }

  // دالة لإضافة المنتج إلى المفضلة
  Future<void> _addToFavorite() async {
    try {
      await AddProductToFavoriteService()
          .addProductToFavorite(productId: widget.product.id);
      await FavoriteService().addToFavorites(widget.product.id); // تخزين محلي
      setState(() {
        isFavorite = true;
      });
      Get.snackbar('Success', 'Product added to favorites');
    } catch (e) {
      Get.snackbar('Error', 'Failed to add product to favorites: $e');
    }
  }

  // دالة لإزالة المنتج من المفضلة
  Future<void> _removeFromFavorite() async {
    try {
      await RemoveProductFromFavoriteService()
          .removeProductFromFavorite(productId: widget.product.id);
      await FavoriteService()
          .removeFromFavorites(widget.product.id); // إزالة من التخزين المحلي
      setState(() {
        isFavorite = false;
      });
      Get.snackbar('Success', 'Product removed from favorites');
    } catch (e) {
      Get.snackbar('Error', 'Failed to remove product from favorites: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(
          () => ProductDetailsPage(
            product: widget.product,
            market: widget.market,
          ),
        );
      },
      child: Card(
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child:
                  Image.network('$baseUrlImage/${widget.product.image.path}'),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    widget.product.name,
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
                        '\$ ${widget.product.price}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: APPColor.primarycolor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color:
                              isFavorite ? Colors.red : APPColor.primarycolor,
                        ),
                        onPressed: () {
                          isFavorite ? _removeFromFavorite() : _addToFavorite();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
