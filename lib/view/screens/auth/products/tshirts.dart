import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/auth/store.dart';
import 'package:my_project/view/widget/auth/productdetailspage.dart';

class Tshirts extends StatelessWidget {
  const Tshirts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        GridView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: [
            MaterialButton(
              onPressed: () {
                Get.to(() => const ProductDetailsPage(
                      productDetails:
                          "A basic T-shirt is a staple in many wardrobes, known for its simple design, comfort, and versatility. It’s typically made from lightweight, breathable fabrics like cotton or blends, and comes in a variety of styles, colors, and fits.  - \$15",
                      productImage: 'assets/clothes/16.jpg',
                    ));
              },
              child: Store(
                images: "assets/clothes/16.jpg",
                names: "White T-shirt",
                price: r'$15',
                onFavoritePressed: () {},
              ),
            ),
            MaterialButton(
              onPressed: () {
                Get.to(() => const ProductDetailsPage(
                      productDetails:
                          "A basic T-shirt is a staple in many wardrobes, known for its simple design, comfort, and versatility. It’s typically made from lightweight, breathable fabrics like cotton or blends, and comes in a variety of styles, colors, and fits.  - \$17",
                      productImage: 'assets/clothes/17.jpg',
                    ));
              },
              child: Store(
                images: "assets/clothes/17.jpg",
                names: "Black T-shirt",
                price: r'$17',
                onFavoritePressed: () {},
              ),
            ),
            MaterialButton(
                onPressed: () {
                  Get.to(() => const ProductDetailsPage(
                        productDetails:
                            "A basic T-shirt is a staple in many wardrobes, known for its simple design, comfort, and versatility. It’s typically made from lightweight, breathable fabrics like cotton or blends, and comes in a variety of styles, colors, and fits.  - \$19",
                        productImage: 'assets/clothes/18.jpg',
                      ));
                },
                child: Store(
                  images: "assets/clothes/18.jpg",
                  names: "Blue T-shirt",
                  price: r'$19',
                  onFavoritePressed: () {},
                )),
          ],
        ),
      ]),
    );
  }
}
