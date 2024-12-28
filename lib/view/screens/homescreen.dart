import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:my_project/controller/homescreen_controller.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/view/screens/cart.dart';
import 'package:my_project/view/widget/auth/custombuttonappbar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    Get.put(HomescreenControllerIm());
    return GetBuilder<HomescreenControllerIm>(
      builder: (controller) => Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: APPColor.primarycolor,
          onPressed: () {
            Get.to(Cart());
          },
          child: Icon(
            Icons.shopping_basket_outlined,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
            children: [
              Row(
                children: [
                  Custombuttonappbar(
                    textbutton: "Home",
                    iconData: Icons.home,
                    onPressed: () {
                      controller.changepage(0);
                    },
                    active: controller.currentpage == 0 ? true : false,
                  )
                ],
              ),
              Row(
                children: [
                  Custombuttonappbar(
                      textbutton: "Profile",
                      iconData: Icons.person_pin_sharp,
                      onPressed: () {
                        controller.changepage(1);
                      },
                      active: controller.currentpage == 1 ? true : false)
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Custombuttonappbar(
                      textbutton: "Favorite",
                      iconData: Icons.favorite,
                      onPressed: () {
                        controller.changepage(2);
                      },
                      active: controller.currentpage == 2 ? true : false)
                ],
              ),
              Row(
                children: [
                  Custombuttonappbar(
                      textbutton: "Setting",
                      iconData: Icons.settings,
                      onPressed: () {
                        controller.changepage(3);
                      },
                      active: controller.currentpage == 3 ? true : false),
                ],
              ),
            ],
          ),
        ),
        body: controller.listpage.elementAt(controller.currentpage),
      ),
    );
  }
}
