import 'package:flutter/material.dart';
import 'package:my_project/view/screens/auth/products/clothespage.dart';
import 'package:my_project/view/screens/auth/products/electronicspage.dart';
import 'package:my_project/view/screens/auth/products/hoodies.dart';
import 'package:my_project/view/screens/auth/products/jackets.dart';
import 'package:my_project/view/screens/auth/products/makeuppage.dart';
import 'package:my_project/view/screens/auth/products/pants.dart';
import 'package:my_project/view/screens/auth/products/perfumepage.dart';
import 'package:my_project/view/screens/auth/products/pharmacypage.dart';
import 'package:my_project/view/screens/auth/products/shoespage.dart';
import 'package:my_project/view/screens/auth/products/tshirts.dart';

class getpage extends StatelessWidget {
  const getpage({
    super.key,
    required this.pageName,
  });

  final String pageName;

  @override
  Widget build(BuildContext context) {
    switch (pageName) {
      case "ClothesPage":
        return Clothespage();
      case "ElectronicsPage":
        return Electronicspage();
      case "Hoodies":
        return Hoodies();
      case "Jackets":
        return Jackets();
      case "MakeupPage":
        return Makeuppage();
      case "Pants":
        return Pants();
      case "PerfumePage":
        return Perfumepage();
      case "PharmacyPage":
        return Pharmacypage();
      case "ShoesPage":
        return Shoespage();
      case "Tshirts":
        return Tshirts();
      default:
        return Scaffold(
          appBar: AppBar(title: Text("Not Found")),
          body: Center(child: Text("Page not found")),
        );
    }
  }
}