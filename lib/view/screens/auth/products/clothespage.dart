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
              Get.to(const Pants());
            },
            child: const Store(
              //    assets\clothes\hoodies\1.jpg
              images: "assets/clothes/1.jpg",
              names: "Pants",
            ),
          ),
          MaterialButton(
            onPressed: () {
              Get.to(const Hoodies());
            },
            child: const Store(
              // assets\clothes\8.jpg
              images: "assets/clothes/8.jpg",
              names: "Hoodies",
            ),
          ),
          MaterialButton(
              onPressed: () {
                Get.to(const Jackets());
              },
              child: const Store(
                images: "assets/clothes/13.jpg",
                names: "Jackets",
              )),
          MaterialButton(
              onPressed: () {
                Get.to(const Tshirts());
              },
              child: const Store(
                images: "assets/clothes/17.jpg",
                names: "T-Shirt",
              )),
        ],
      ),
    ]));
  }
}
