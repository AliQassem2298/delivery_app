import 'package:flutter/material.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/view/widget/cart/buttoncart.dart';

class CustomButtonNavigaterCart extends StatelessWidget {
  final String price;
  final String shipping;
  final String totalprice;
  const CustomButtonNavigaterCart(
      {super.key,
      required this.price,
      required this.shipping,
      required this.totalprice});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Price",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "$price\$",
                style: TextStyle(fontSize: 16),
              ),
            )
          ]),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "shipping",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                " $shipping\$",
                style: TextStyle(fontSize: 16),
              ),
            )
          ]),
          Divider(),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                " Total Price",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: APPColor.primarycolor),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "$totalprice\$",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: APPColor.primarycolor),
              ),
            )
          ]),
          SizedBox(
            height: 10,
          ),
          custombuttoncart(
            textbutton: "Plase Order",
            OnPressed: () {},
          )
        ],
      ),
    );
  }
}
