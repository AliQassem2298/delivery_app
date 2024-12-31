// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/data/datasource/static/static.dart';

class customdotcontrolleronbording extends StatelessWidget {
  const customdotcontrolleronbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      ...List.generate(
          onbordinglist.length,
          (index) => AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                duration: const Duration(milliseconds: 900),
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                    color: APPColor.primarycolor,
                    borderRadius: BorderRadius.circular(10)),
              ))
    ]);
  }
}
