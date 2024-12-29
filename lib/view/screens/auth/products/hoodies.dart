import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/view/widget/auth/productdetailspage.dart';

import '../../../widget/auth/store.dart';

class Hoodies extends StatelessWidget {
  const Hoodies({super.key});

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
                          "A printed hoodie is a casual, comfortable hoodie that features printed designs, graphics, logos, text, or patterns on its surface. These hoodies are popular in both fashion and casual wear, offering a stylish yet relaxed look while allowing individuals to express their personality or interests through the prints. - \$100",
                      productImage: 'assets/clothes/5.jpg',
                    ));
              },
              child: Store(
                images: "assets/clothes/5.jpg",
                names: "Printed Hoodie",
                price: r'$100',
                onFavoritePressed: () {},
              ),
            ),
            MaterialButton(
              onPressed: () {
                Get.to(() => const ProductDetailsPage(
                      productDetails:
                          "A sport hoodie is a type of hoodie specifically designed for athletic activities or activewear. These hoodies are made with performance-oriented materials and features that cater to comfort, flexibility, and breathability during exercise or physical activities. - \$99",
                      productImage: 'assets/clothes/6.jpg',
                    ));
              },
              child: Store(
                images: "assets/clothes/6.jpg",
                names: "Sport Hoodie",
                price: r'$99',
                onFavoritePressed: () {},
              ),
            ),
            MaterialButton(
                onPressed: () {
                  Get.to(() => const ProductDetailsPage(
                        productDetails:
                            "An armor hoodie is a specialized type of hoodie designed with protective features that mimic or incorporate elements of armor for added safety and protection, while still maintaining the comfort and casual look of a traditional hoodie. These hoodies are typically intended for activities that require physical protection, such as extreme sports, motorcycling, or urban self-defense. They combine the functionality of regular hoodies with additional built-in armor-like components to guard the wearer against potential impacts, abrasions, or other risks. - \$87",
                        productImage: 'assets/clothes/7.jpg',
                      ));
                },
                child: Store(
                  images: "assets/clothes/7.jpg",
                  names: "Armor Hoodie",
                  price: r'$87',
                  onFavoritePressed: () {},
                )),
            MaterialButton(
                onPressed: () {
                  Get.to(() => const ProductDetailsPage(
                        productDetails:
                            "The Anrabess hoodie refers to a specific brand or style of hoodie that is popular for its casual, comfortable, and fashionable designs. Anrabess is known for offering a variety of trendy clothing items, including hoodies, that cater to different tastes and preferences. - \$56",
                        productImage: 'assets/clothes/8.jpg',
                      ));
                },
                child: Store(
                  images: "assets/clothes/8.jpg",
                  names: "Anrabess Hoodie",
                  price: r'$56',
                  onFavoritePressed: () {},
                )),
          ],
        ),
      ]),
    );
  }
}
