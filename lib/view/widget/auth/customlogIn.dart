import 'package:flutter/material.dart';
import 'package:my_project/core/constant/color.dart';

class Customlogin extends StatelessWidget {
  final String text1;
  final String text2;
   final Function()? onTap;
  const Customlogin({super.key, required this.text1, required this.text2, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text2),
        InkWell(
          onTap: onTap,
          child: Text(
            text1,
            style: TextStyle(color: APPColor.primarycolor),
          ),
        )
      ],
    );
  }
}
