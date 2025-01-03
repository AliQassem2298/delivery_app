import 'package:flutter/material.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/view/widget/cart/appbarcart.dart';
import 'package:my_project/view/widget/cart/custom_button_navigater_cart.dart';
import 'package:my_project/view/widget/cart/customitemcartlist.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomButtonNavigaterCart(
          price: "1200", shipping: "1300", totalprice: "2500"),
      body: ListView(
        children: [
          const topappbaecart(
            title: 'MY CART',
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              // height: 20,
              decoration: BoxDecoration(
                  color: APPColor.primarycolor,
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "YOU Have 2 Item in YOUR List",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Column(
              children: [
                Customitemcartlist(
                  name: "teshert", price: "5000\$", count: "2", //imagename: '',
                ),
                Customitemcartlist(
                  name: "teshert", price: "5000\$", count: "2", //imagename: '',
                ),
                Customitemcartlist(
                  name: "teshert", price: "5000\$", count: "2", //imagename: '',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
