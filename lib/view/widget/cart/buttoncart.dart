// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:my_project/core/constant/color.dart';

class custombuttoncart extends StatelessWidget {
  final String textbutton;
  final void Function()? OnPressed;

  const custombuttoncart({
    super.key,
    required this.textbutton,
    required this.OnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: APPColor.primarycolor,
        width: 380,
        child: MaterialButton(
            onPressed: OnPressed,
            child: Text(
              textbutton,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )));
  }
}
