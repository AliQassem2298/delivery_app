import 'package:flutter/material.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/core/constant/imageasset.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 300,
      height: 230,
      decoration: BoxDecoration(border: Border.all(color: APPColor.primarycolor)),
      child: Image.asset(
                        AppImageasset.logo,
                        fit: BoxFit.cover,
                        
                      ))
                      ;
              
  }
}