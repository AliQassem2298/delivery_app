import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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

  get stores => null;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              child: Row(
                children: [
                  // MaterialButton(
                  // onPressed: () {},
                  //  child: Icon(Icons.settings,
                  //  color: Color(0xff3681AB), size: 20),
                  //  ),
                  SizedBox(width: 18),

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
                            Icon(Icons.search, color: Color(0xff3681AB)),
                      ),
                    ),
                  ),

                  MaterialButton(
                    onPressed: () {},
                    child: Icon(Icons.favorite,
                        color: Color(0xff3681AB), size: 20),
                  ),

                  // SizedBox(width: 0),
                  MaterialButton(
                    onPressed: () {},
                    child: Icon(Icons.notifications_active_outlined,
                        color: Color(0xff3681AB), size: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
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
                    Get.to(Clothespage());
                  },
                  child: Store(
                    images: "assets/images/clothes.jpg",
                    names: "Clothes Store",
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Get.to(Shoespage());
                  },
                  child: Store(
                    images: "assets/images/shoes.jpg",
                    names: "Shoes Store",
                  ),
                ),
                MaterialButton(
                    onPressed: () {
                      Get.to(Pharmacypage());
                    },
                    child: Store(
                      images: "assets/images/medicine.jpg",
                      names: "Pharmacy",
                    )),
                MaterialButton(
                    onPressed: () {
                      Get.to(Electronicspage());
                    },
                    child: Store(
                      images: "assets/images/electronics.jpg",
                      names: "Electronics Store",
                    )),
                MaterialButton(
                    onPressed: () {
                      Get.to(Perfumepage());
                    },
                    child: Store(
                      images: "assets/images/perfumes.jpg",
                      names: "Perfume Store",
                    )),
                MaterialButton(
                    onPressed: () {
                      Get.to(Makeuppage());
                    },
                    child: Store(
                      images: "assets/images/makeup.jpg",
                      names: "makeup Store",
                    )),
              ],
            ),
          ],
        ),
        
      ),
    );
  }
}
