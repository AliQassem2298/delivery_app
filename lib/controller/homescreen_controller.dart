// ignore_for_file: avoid_renaming_method_parameters

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/view/screens/auth/home.dart';
import 'package:my_project/view/screens/favorite_page.dart';
import 'package:my_project/view/screens/profile.dart';
import 'package:my_project/view/screens/setting.dart';

abstract class HomescreenController extends GetxController {
  changepage(int currentpage);
}

class HomescreenControllerIm extends HomescreenController {
  int currentpage = 0;
  List<Widget> listpage = [
    const Homepage(),
    const EditProfilePage(),
    const FavoritePage(),
    const Setting(),
  ];

  // List bottonappbar = ["Home", "Setting", "Profile", "Favorit"];
  @override
  changepage(int i) {
    currentpage = i;
    update();
  }
}
