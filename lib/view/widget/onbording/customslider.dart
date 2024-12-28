import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/controller/onbordingcontroller.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/data/datasource/static/static.dart';

class Customslideronbording extends GetView<OnbordingcontrollerIm> {
  const Customslideronbording({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        itemCount: onbordinglist.length,
        itemBuilder: (context, i) => Column(
              children: [
                SizedBox(height: 30),
                Text(
                  onbordinglist[i].title!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: 80,
                ),
                Image.asset(
                  onbordinglist[i].image!,
                  width: 320,
                  height: 280,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 80),
                Container(
                  child: Text(
                    onbordinglist[i].body!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 2, fontSize: 18, color: APPColor().grey),
                  ),
                )
              ],
            ));
  }
}
