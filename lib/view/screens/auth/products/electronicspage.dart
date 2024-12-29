import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/auth/store.dart';
import 'package:my_project/view/widget/auth/productdetailspage.dart';

class Electronicspage extends StatelessWidget {
  const Electronicspage({super.key});

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
                            "A Bluetooth speaker is a portable audio device that uses Bluetooth technology to wirelessly connect to other devices, such as smartphones, tablets, laptops, and computers, to play music, podcasts, or other audio content. Bluetooth speakers come in various shapes, sizes, and features, designed to suit different needs, from casual listening at home to outdoor activities. - \$400",
                        productImage: 'assets/clothes/37.jpg',
                      ));
                },
                child: Store(
                  images: "assets/clothes/37.jpg",
                  names: "Speaker",
                  price: r'$400',
                  onFavoritePressed: () {},
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Get.to(() => const ProductDetailsPage(
                        productDetails:
                            "A smartwatch is a wearable device that functions as an extension of a smartphone, providing users with the ability to access notifications, track fitness activities, manage health metrics, and use apps directly from their wrist. It typically pairs with a smartphone via Bluetooth or Wi-Fi and offers a wide range of features beyond timekeeping. - \$750",
                        productImage: 'assets/clothes/38.jpg',
                      ));
                },
                child: Store(
                  images: "assets/clothes/38.jpg",
                  names: "Smart Watch",
                  price: r'$750',
                  onFavoritePressed: () {},
                ),
              ),
              MaterialButton(
                  onPressed: () {
                    Get.to(() => const ProductDetailsPage(
                          productDetails:
                              "The iPhone 16 Pro Max features a 6.9-inch Super Retina XDR OLED display, A18 Pro chip, and a 48MP triple-camera system with 5x optical zoom. It offers up to 1TB of storage and improved battery life.- \$1200",
                          productImage: 'assets/clothes/39.jpg',
                        ));
                  },
                  child: Store(
                    images: "assets/clothes/39.jpg",
                    names: "Mobile",
                    price: r'$1200',
                    onFavoritePressed: () {},
                  )),
              MaterialButton(
                  onPressed: () {
                    Get.to(() => const ProductDetailsPage(
                          productDetails:
                              "Canon is a leading brand in the camera industry, known for producing high-quality cameras ranging from entry-level models to professional-grade DSLRs, mirrorless cameras, and compact cameras. - \$900",
                          productImage: 'assets/clothes/40.jpg',
                        ));
                  },
                  child: Store(
                    images: "assets/clothes/40.jpg",
                    names: "Camera",
                    price: r'$900',
                    onFavoritePressed: () {},
                  )),
              MaterialButton(
                  onPressed: () {
                    Get.to(() => const ProductDetailsPage(
                          productDetails:
                              "A tablet is a portable computing device that features a touchscreen interface, typically larger than a smartphone but smaller than a laptop. Tablets are versatile devices used for browsing the internet, watching videos, gaming, drawing, and productivity tasks like writing and note-taking. - \$1000",
                          productImage: 'assets/clothes/41.jpg',
                        ));
                  },
                  child: Store(
                    images: "assets/clothes/41.jpg",
                    names: "Tablet",
                    price: r'$1000',
                    onFavoritePressed: () {},
                  )),
              MaterialButton(
                  onPressed: () {
                    Get.to(() => const ProductDetailsPage(
                          productDetails:
                              "A steam iron is a household appliance used for pressing clothes to remove wrinkles and creases. It uses steam to soften the fabric fibers, making it easier to smooth out wrinkles without damaging the fabric. - \$450",
                          productImage: 'assets/clothes/42.jpg',
                        ));
                  },
                  child: Store(
                    images: "assets/clothes/42.jpg",
                    names: "Steam Iron",
                    price: r'$450',
                    onFavoritePressed: () {},
                  )),
            ],
          ),
        ]));
  }
}
