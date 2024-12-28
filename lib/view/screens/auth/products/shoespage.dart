import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/auth/store.dart';
import 'package:my_project/view/widget/auth/productdetailspage.dart';

class Shoespage extends StatelessWidget {
  const Shoespage({super.key});

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
                        "Black leather shoes are a classic and versatile footwear option that can be dressed up or down, suitable for various occasions, from formal events to casual outings. Made from durable, high-quality leather, these shoes are not only stylish but also offer comfort and long-lasting wear.  - \$115",
                    productImage: 'assets/clothes/19.jpg',
                  ));
            },
            child: Store(
              images: "assets/clothes/19.jpg",
              names: "Black leather",
              price: r'$115',
              onFavoritePressed: () {},
            ),
          ),
          MaterialButton(
            onPressed: () {
              Get.to(() => ProductDetailsPage(
                    productDetails:
                        "Nike Dunk shoes are a classic line of sneakers that have become a cultural and fashion icon since their debut. Initially designed for basketball, these shoes have evolved into a popular lifestyle and streetwear sneaker. - \$145",
                    productImage: 'assets/clothes/20.jpg',
                  ));
            },
            child: Store(
              images: "assets/clothes/20.jpg",
              names: "Nike dunck",
              price: r'$145',
              onFavoritePressed: () {},
            ),
          ),
          MaterialButton(
              onPressed: () {
                Get.to(() => ProductDetailsPage(
                      productDetails:
                          "Red Tape shoes are a well-known brand offering a range of stylish and affordable footwear, primarily focusing on casual and formal shoes. The brand is recognized for combining comfort, quality, and style, making it popular for everyday use. - \$85",
                      productImage: 'assets/clothes/21.jpg',
                    ));
              },
              child: Store(
                images: "assets/clothes/21.jpg",
                names: "Red tape",
                price: r'$85',
                onFavoritePressed: () {},
              )),
          MaterialButton(
              onPressed: () {
                Get.to(() => ProductDetailsPage(
                      productDetails:
                          "The Adidas Runfalcon is a popular model within Adidas's lineup of running and casual athletic shoes. Designed for comfort and performance, it is well-suited for both running and day-to-day wear, making it a versatile option. - \$300",
                      productImage: 'assets/clothes/22.jpg',
                    ));
              },
              child: Store(
                images: "assets/clothes/22.jpg",
                names: "Adidas runfalcon",
                price: r'$300',
                onFavoritePressed: () {},
              )),
          MaterialButton(
              onPressed: () {
                Get.to(() => ProductDetailsPage(
                      productDetails:
                          "Bruton Shoes is a footwear brand known for offering a range of comfortable, stylish, and functional shoes for various occasions. While there is limited detailed public information about Bruton Shoes as a global footwear brand. - \$450",
                      productImage: 'assets/clothes/23.jpg',
                    ));
              },
              child: Store(
                images: "assets/clothes/23.jpg",
                names: "Bruton shoes",
                price: r'$450',
                onFavoritePressed: () {},
              )),
          MaterialButton(
              onPressed: () {
                Get.to(() => ProductDetailsPage(
                      productDetails:
                          "Canvas Oxford Shoes are a modern twist on the classic Oxford shoes, which are traditionally made from leather or suede. The primary difference is the use of canvas as the main material for the upper portion of the shoe, offering a more casual, breathable alternative. - \$200",
                      productImage: 'assets/clothes/24.jpg',
                    ));
              },
              child: Store(
                images: "assets/clothes/24.jpg",
                names: "Canvas Oxfords",
                price: r'$200',
                onFavoritePressed: () {},
              )),
        ],
      ),
    ]));
  }
}
