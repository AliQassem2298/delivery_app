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
        return const Clothespage();
      case "ElectronicsPage":
        return const Electronicspage();
      case "Hoodies":
        return const Hoodies();
      case "Jackets":
        return const Jackets();
      case "MakeupPage":
        return const Makeuppage();
      case "Pants":
        return const Pants();
      case "PerfumePage":
        return const Perfumepage();
      case "PharmacyPage":
        return const Pharmacypage();
      case "ShoesPage":
        return const Shoespage();
      case "Tshirts":
        return const Tshirts();
      default:
        return Scaffold(
          appBar: AppBar(title: const Text("Not Found")),
          body: const Center(child: Text("Page not found")),
        );
    }
  }
}