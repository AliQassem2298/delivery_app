import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/view/screens/auth/products/hoodies.dart';
import 'package:my_project/view/screens/auth/products/jackets.dart';
import 'package:my_project/view/screens/auth/products/pants.dart';
import 'package:my_project/view/screens/auth/products/tshirts.dart';

import '../../../widget/auth/store.dart';

class Clothespage extends StatelessWidget {
  const Clothespage({super.key});

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
              Get.to(Pants());
            },
            child: Store(
              //    assets\clothes\hoodies\1.jpg
              images: "assets/clothes/1.jpg",
              names: "Pants",
            ),
          ),
          MaterialButton(
            onPressed: () {
              Get.to(Hoodies());
            },
            child: Store(
              // assets\clothes\8.jpg
              images: "assets/clothes/8.jpg",
              names: "Hoodies",
            ),
          ),
          MaterialButton(
              onPressed: () {
                Get.to(Jackets());
              },
              child: Store(
                images: "assets/clothes/13.jpg",
                names: "Jackets",
              )),
          MaterialButton(
              onPressed: () {
                Get.to(Tshirts());
              },
              child: Store(
                images: "assets/clothes/17.jpg",
                names: "T-Shirt",
              )),
        ],
      ),
    ]));
  }
}
