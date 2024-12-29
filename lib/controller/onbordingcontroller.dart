import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/core/constant/routes.dart';
import 'package:my_project/data/datasource/static/static.dart';

abstract class Onbordingcontroller extends GetxController {
  next();
  onpagechenged(int index);
}

class OnbordingcontrollerIm extends Onbordingcontroller {
  int currentpage = 0;

  late PageController pageController;
  @override
  next() {
    currentpage++;

    if (currentpage > onbordinglist.length - 1) {
      Get.offAllNamed(AppRout.login);
    } else {
      pageController.animateToPage(currentpage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onpagechenged(int index) {
    currentpage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
