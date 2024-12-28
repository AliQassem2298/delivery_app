import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/controller/onbordingcontroller.dart';
import 'package:my_project/core/constant/color.dart';

class Custombuttononbording extends GetView<OnbordingcontrollerIm> {
  const Custombuttononbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 60),
      color: APPColor.primarycolor,
      child: MaterialButton(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 4),
          onPressed: () {
            controller.next();
          },
          child: Text(
            "Next",
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
    );
  }
}
