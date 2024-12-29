// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_project/core/constant/color.dart';

class Custombuttonappbar extends StatelessWidget {
  void Function()? onPressed;
  final String textbutton;
  final IconData iconData;
  final bool? active;

  Custombuttonappbar(
      {super.key,
      required this.textbutton,
      required this.iconData,
      required this.onPressed,
      required this.active});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(iconData,
              color: active == true ? APPColor.primarycolor : Colors.blueGrey),
          Text(
            textbutton,
            style: TextStyle(
                color:
                    active == true ? APPColor.primarycolor : Colors.blueGrey),
          ),
        ],
      ),
    );
  }
}
