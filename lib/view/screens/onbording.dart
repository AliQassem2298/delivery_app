import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/controller/onbordingcontroller.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/view/widget/onbording/custombutton.dart';
import 'package:my_project/view/widget/onbording/customslider.dart';
import 'package:my_project/view/widget/onbording/dotcontroller.dart';

class Onbording extends StatelessWidget {
  const Onbording({super.key});

  Widget build(BuildContext context) {
    Get.put(OnbordingcontrollerIm());
    return Scaffold(
        backgroundColor: APPColor.background,
        body: SafeArea(
            child: Column(children: [
          const Expanded(
            flex: 3,
            child: Customslideronbording(),
          ),
          Expanded(
              flex: 1,
              child: Column(children: [
                customdotcontrolleronbording(),
                Spacer(flex: 2),
                Custombuttononbording(),
              ]))
        ])));
  }
}
