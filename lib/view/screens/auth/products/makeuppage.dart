import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/auth/store.dart';
import 'package:my_project/view/widget/auth/productdetailspage.dart';

class Makeuppage extends StatelessWidget {
  const Makeuppage({super.key});

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
                            "Loose powder is a type of makeup product used primarily to set foundation and concealer, providing a smooth, matte finish and helping to control shine throughout the day. Unlike pressed powder, loose powder comes in a fine, loose texture, often in a container with a sifter to prevent spillage. - \$113",
                        productImage: 'assets/clothes/43.jpg',
                      ));
                },
                child: Store(
                  images: "assets/clothes/43.jpg",
                  names: "Loose Powder",
                  price: r'$113',
                  onFavoritePressed: () {},
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Get.to(() => const ProductDetailsPage(
                        productDetails:
                            "Lipstick is a popular cosmetic product used to add color and texture to the lips. It comes in a variety of formulations, shades, and finishes, making it one of the most versatile makeup products. Lipstick not only enhances the lips' appearance but also complements an individual's overall makeup look. - \$72",
                        productImage: 'assets/clothes/44.jpg',
                      ));
                },
                child: Store(
                  images: "assets/clothes/44.jpg",
                  names: "Lipstick",
                  price: r'$72',
                  onFavoritePressed: () {},
                ),
              ),
              MaterialButton(
                  onPressed: () {
                    Get.to(() => const ProductDetailsPage(
                          productDetails:
                              "A manicure is a cosmetic beauty treatment for the hands and nails. It involves various steps to improve the appearance and health of the nails, cuticles, and hands, typically followed by the application of nail polish or other treatments. Manicures are popular for both aesthetic and grooming purposes and are often done at spas, salons, or at home. - \$20",
                          productImage: 'assets/clothes/45.jpg',
                        ));
                  },
                  child: Store(
                    images: "assets/clothes/45.jpg",
                    names: "Manicure",
                    price: r'$20',
                    onFavoritePressed: () {},
                  )),
              MaterialButton(
                  onPressed: () {
                    Get.to(() => const ProductDetailsPage(
                          productDetails:
                              "Concealer is a cosmetic product designed to cover up imperfections, such as blemishes, dark circles, redness, and other skin discolorations. It typically provides more coverage than foundation, offering targeted solutions for specific areas of the face. Concealers come in various formulations, colors, and textures to cater to different skin tones, types, and concerns. - \$70",
                          productImage: 'assets/clothes/46.jpg',
                        ));
                  },
                  child: Store(
                    images: "assets/clothes/46.jpg",
                    names: "Concealer",
                    price: r'$70',
                    onFavoritePressed: () {},
                  )),
              MaterialButton(
                  onPressed: () {
                    Get.to(() => const ProductDetailsPage(
                          productDetails:
                              "Mascara is a cosmetic product used to enhance the eyelashes, making them look longer, thicker, and darker. It is one of the most popular and essential products in many makeup routines, helping to accentuate the eyes and complete the overall look. - \$150",
                          productImage: 'assets/clothes/47.jpg',
                        ));
                  },
                  child: Store(
                    images: "assets/clothes/47.jpg",
                    names: "Mascara",
                    price: r'$150',
                    onFavoritePressed: () {},
                  )),
              MaterialButton(
                  onPressed: () {
                    Get.to(() => const ProductDetailsPage(
                          productDetails:
                              "Foundation is a makeup product designed to create an even, smooth base for the skin by covering imperfections, uneven skin tone, redness, and discoloration. It provides a uniform complexion and enhances the overall appearance of the skin. Foundation comes in a variety of formulations, finishes, and coverage options to suit different skin types, tones, and personal preferences. - \$140",
                          productImage: 'assets/clothes/48.jpg',
                        ));
                  },
                  child: Store(
                    images: "assets/clothes/48.jpg",
                    names: "Foundation",
                    price: r'$140',
                    onFavoritePressed: () {},
                  )),
            ],
          ),
        ]));
  }
}
