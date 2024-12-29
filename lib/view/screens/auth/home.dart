// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/main.dart';
import 'package:my_project/services/show_all_markets_service.dart';
import 'package:my_project/services/update_address_service.dart';
import 'package:my_project/view/screens/auth/products/clothespage.dart';
import 'package:my_project/view/screens/auth/products/electronicspage.dart';
import 'package:my_project/view/screens/auth/products/makeuppage.dart';
import 'package:my_project/view/screens/auth/products/perfumepage.dart';
import 'package:my_project/view/screens/auth/products/pharmacypage.dart';
import 'package:my_project/view/screens/auth/products/shoespage.dart';
import 'package:my_project/view/widget/auth/store.dart';
import 'package:my_project/view/widget/auth/storeSearchDelegate.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                // print('${sharedPreferences!.getString("token")}');
                // await UpdateAddressService()
                //     .updateAddress(location: 'location');
              },
              icon: const Icon(Icons.import_contacts)),
          IconButton(
              onPressed: () {
                // sharedPreferences!.clear();
                print('${sharedPreferences!.getString("token")}');
                print('${sharedPreferences!.getString("location")}');
              },
              icon: const Icon(Icons.abc))
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: [
              // MaterialButton(
              // onPressed: () {},
              //  child: Icon(Icons.settings,
              //  color: Color(0xff3681AB), size: 20),
              //  ),
              const SizedBox(width: 18),

              Expanded(
                child: TextFormField(
                  readOnly: true,
                  onTap: () {
                    showSearch(
                      context: context,
                      delegate: StoreSearchDelegate(),
                    );
                  },
                  decoration: InputDecoration(
                    hintText: "Find a store or a product!",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    suffixIcon:
                        const Icon(Icons.search, color: Color(0xff3681AB)),
                  ),
                ),
              ),

              MaterialButton(
                onPressed: () {},
                child: const Icon(Icons.favorite,
                    color: Color(0xff3681AB), size: 20),
              ),

              // SizedBox(width: 0),
              MaterialButton(
                onPressed: () {},
                child: const Icon(Icons.notifications_active_outlined,
                    color: Color(0xff3681AB), size: 20),
              ),
            ],
          ),
          const SizedBox(height: 20),
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
                  Get.to(const Clothespage());
                },
                child: const Store(
                  images: "assets/images/clothes.jpg",
                  names: "Clothes Store",
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Get.to(const Shoespage());
                },
                child: const Store(
                  images: "assets/images/shoes.jpg",
                  names: "Shoes Store",
                ),
              ),
              MaterialButton(
                  onPressed: () {
                    Get.to(const Pharmacypage());
                  },
                  child: const Store(
                    images: "assets/images/medicine.jpg",
                    names: "Pharmacy",
                  )),
              MaterialButton(
                  onPressed: () {
                    Get.to(const Electronicspage());
                  },
                  child: const Store(
                    images: "assets/images/electronics.jpg",
                    names: "Electronics Store",
                  )),
              MaterialButton(
                  onPressed: () {
                    Get.to(const Perfumepage());
                  },
                  child: const Store(
                    images: "assets/images/perfumes.jpg",
                    names: "Perfume Store",
                  )),
              MaterialButton(
                  onPressed: () {
                    Get.to(const Makeuppage());
                  },
                  child: const Store(
                    images: "assets/images/makeup.jpg",
                    names: "makeup Store",
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
