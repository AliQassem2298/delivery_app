import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:my_project/view/widget/auth/%D9%89';

import 'package:my_project/view/widget/auth/productdetailspage.dart';
import '../../../widget/auth/store.dart';

class Jackets extends StatelessWidget {
  const Jackets({super.key});

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
                          "A hooded jacket is a versatile and practical outerwear garment designed to provide warmth and protection against the elements, while also offering the added functionality of a hood to protect the head and neck. Hooded jackets are available in a variety of styles, materials, and designs, making them suitable for different weather conditions and activities. - \$79",
                      productImage: 'assets/clothes/9.jpg',
                    ));
              },
              child: Store(
                images: "assets/clothes/9.jpg",
                names: "Hooded Jacket",
                price: r'$79',
                onFavoritePressed: () {},
              ),
            ),
            MaterialButton(
              onPressed: () {
                Get.to(() => const ProductDetailsPage(
                      productDetails:
                          "A bomber jacket is a type of outerwear originally designed for military pilots but has since become a popular fashion statement. Known for its sleek, versatile, and stylish design, the bomber jacket is characterized by its fitted waist and cuffs, zipper closure, and often a rugged or military-inspired look. - \$100",
                      productImage: 'assets/clothes/10.jpg',
                    ));
              },
              child: Store(
                images: "assets/clothes/10.jpg",
                names: "Bomber Jacket",
                price: r'$100',
                onFavoritePressed: () {},
              ),
            ),
            MaterialButton(
                onPressed: () {
                  Get.to(() => const ProductDetailsPage(
                        productDetails:
                            "A heavy insulated jacket is a type of outerwear specifically designed to provide maximum warmth and protection in cold weather or extreme conditions. These jackets are typically worn in environments where temperatures can drop significantly, such as in winter sports, hiking, or everyday use in frigid climates. - \$125",
                        productImage: 'assets/clothes/11.jpg',
                      ));
                },
                child: Store(
                  images: "assets/clothes/11.jpg",
                  names: "Heavy insulated",
                  price: r'$125',
                  onFavoritePressed: () {},
                )),
            MaterialButton(
                onPressed: () {
                  Get.to(() => const ProductDetailsPage(
                        productDetails:
                            "A cozy jacket is a type of outerwear designed for warmth, comfort, and relaxation. It combines a soft, often plush, texture with practical features to keep you warm while offering a laid-back, easygoing style. Cozy jackets are ideal for casual wear in cool to mild weather, or for layering indoors during colder months. - \$90",
                        productImage: 'assets/clothes/12.jpg',
                      ));
                },
                child: Store(
                  images: "assets/clothes/12.jpg",
                  names: "Cozy Jacket",
                  price: r'$90',
                  onFavoritePressed: () {},
                )),
          ],
        ),
      ]),
    );
  }
}
