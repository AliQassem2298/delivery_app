import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/auth/store.dart';
import 'package:my_project/view/widget/auth/productdetailspage.dart';

class Pharmacypage extends StatelessWidget {
  const Pharmacypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      GridView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          MaterialButton(
            onPressed: () {
              Get.to(() => ProductDetailsPage(
                    productDetails:
                        "Dove Bar refers to the popular Dove Beauty Bar, which is a well-known product from the brand Dove, a subsidiary of Unilever. It's a soap alternative that has been marketed as a moisturizing bar soap, designed for both cleansing and skincare. - \$7",
                    productImage: 'assets/clothes/31.jpg',
                  ));
            },
            child: Store(
              images: "assets/clothes/31.jpg",
              names: "Dove Bar",
              price: r'$7',
              onFavoritePressed: () {},
            ),
          ),
          MaterialButton(
            onPressed: () {
              Get.to(() => ProductDetailsPage(
                    productDetails:
                        "Eye Cream is a specialized skincare product designed to target the delicate skin around the eyes. This area is often more sensitive, thinner, and prone to showing signs of aging or fatigue. Eye creams are formulated with ingredients that can address concerns such as puffiness, dark circles, fine lines, and dryness.  - \$15",
                    productImage: 'assets/clothes/32.jpg',
                  ));
            },
            child: Store(
              images: "assets/clothes/32.jpg",
              names: "Eye Cream",
              price: r'$15',
              onFavoritePressed: () {},
            ),
          ),
          MaterialButton(
              onPressed: () {
                Get.to(() => ProductDetailsPage(
                      productDetails:
                          "Augmentin is a prescription medication that is a combination of two active ingredients: amoxicillin and clavulanic acid. It is commonly used to treat a wide range of bacterial infections.  - \$20",
                      productImage: 'assets/clothes/33.jpg',
                    ));
              },
              child: Store(
                images: "assets/clothes/33.jpg",
                names: "Augmentin",
                price: r'$20',
                onFavoritePressed: () {},
              )),
          MaterialButton(
              onPressed: () {
                Get.to(() => ProductDetailsPage(
                      productDetails:
                          "Signal Teeth Whitening refers to a range of oral care products by Signal, a well-known brand of toothpaste and dental hygiene products. The Signal Teeth Whitening products are designed to help remove stains, brighten the teeth, and maintain overall dental health.  - \$12",
                      productImage: 'assets/clothes/34.jpg',
                    ));
              },
              child: Store(
                images: "assets/clothes/34.jpg",
                names: "Signal",
                price: r'$12',
                onFavoritePressed: () {},
              )),
          MaterialButton(
              onPressed: () {
                Get.to(() => ProductDetailsPage(
                      productDetails:
                          "Pantene is a well-known brand of hair care products that offers a wide range of shampoos, conditioners, and styling products. Pantene is recognized for its focus on providing high-quality, effective hair care solutions designed to improve the health and appearance of all hair types.  - \$50",
                      productImage: 'assets/clothes/35.jpg',
                    ));
              },
              child: Store(
                images: "assets/clothes/35.jpg",
                names: "Pantene",
                price: r'$50',
                onFavoritePressed: () {},
              )),
          MaterialButton(
              onPressed: () {
                Get.to(() => ProductDetailsPage(
                      productDetails:
                          "CeraVe is a well-known skincare brand that provides a wide range of products, including cleansers, moisturizers, serums, and sunscreens, designed to meet the needs of various skin types. The brand is particularly popular for its gentle, dermatologist-developed formulas and its focus on hydration and skin barrier health.  - \$37",
                      productImage: 'assets/clothes/36.jpg',
                    ));
              },
              child: Store(
                images: "assets/clothes/36.jpg",
                names: "CeraVe",
                price: r'$37',
                onFavoritePressed: () {},
              )),
        ],
      ),
    ]));
  }
}
