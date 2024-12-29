import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/auth/store.dart';
import 'package:my_project/view/widget/auth/productdetailspage.dart';

class Perfumepage extends StatelessWidget {
  const Perfumepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
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
                            "These perfumes are ideal for those who appreciate distinctive, high-quality fragrances. They are often available in luxury boutiques or online retailers. - \$500",
                        productImage: 'assets/clothes/25.jpg',
                      ));
                },
                child: Store(
                  images: "assets/clothes/25.jpg",
                  names: "Bellavita",
                  price: r'$500',
                  onFavoritePressed: () {},
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Get.to(() => const ProductDetailsPage(
                        productDetails:
                            "Miss Dior remains one of the most sought-after fragrances in the world, loved for its classic appeal and sophisticated scent profile. It is an excellent choice for those looking for a luxurious, feminine fragrance. - \$450",
                        productImage: 'assets/clothes/26.jpg',
                      ));
                },
                child: Store(
                  images: "assets/clothes/26.jpg",
                  names: "Miss Dior",
                  price: r'$450',
                  onFavoritePressed: () {},
                ),
              ),
              MaterialButton(
                  onPressed: () {
                    Get.to(() => const ProductDetailsPage(
                          productDetails:
                              "Victoria’s Secret perfumes are popular worldwide, known for their luxurious yet affordable scents. Whether you prefer something light and fruity or deep and sensual, there's a Victoria’s Secret fragrance for every preference. - \$1000",
                          productImage: 'assets/clothes/27.jpg',
                        ));
                  },
                  child: Store(
                    images: "assets/clothes/27.jpg",
                    names: "Victoria Secrets",
                    price: r'$1000',
                    onFavoritePressed: () {},
                  )),
              MaterialButton(
                  onPressed: () {
                    Get.to(() => const ProductDetailsPage(
                          productDetails:
                              "Kay Ali perfumes are known for their luxurious and exotic scent profiles, combining traditional Middle Eastern fragrance elements like oud and amber with modern florals and spices. They are ideal for those who enjoy bold, rich scents that leave a lasting impression. - \$366",
                          productImage: 'assets/clothes/28.jpg',
                        ));
                  },
                  child: Store(
                    images: "assets/clothes/28.jpg",
                    names: "Kay Ali",
                    price: r'$366',
                    onFavoritePressed: () {},
                  )),
              MaterialButton(
                  onPressed: () {
                    Get.to(() => const ProductDetailsPage(
                          productDetails:
                              "A bespoke perfume is ideal for those who want something truly unique and are willing to invest in a scent that reflects their personality, style, and preferences.- \$955",
                          productImage: 'assets/clothes/29.jpg',
                        ));
                  },
                  child: Store(
                    images: "assets/clothes/29.jpg",
                    names: "Bespoke",
                    price: r'$955',
                    onFavoritePressed: () {},
                  )),
              MaterialButton(
                  onPressed: () {
                    Get.to(() => const ProductDetailsPage(
                          productDetails:
                              "Sky perfumes are perfect for those who want a clean, refreshing, and elegant fragrance that reminds them of fresh air, the outdoors, and the freedom of the sky. Whether you’re looking for a fragrance for daily wear or something that exudes sophistication without being overwhelming, these perfumes capture the essence of lightness and serenity. - \$200",
                          productImage: 'assets/clothes/30.jpg',
                        ));
                  },
                  child: Store(
                    images: "assets/clothes/30.jpg",
                    names: "Sky",
                    price: r'$200',
                    onFavoritePressed: () {},
                  )),
            ],
          ),
        ]));
  }
}
