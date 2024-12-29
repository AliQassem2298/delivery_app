import 'package:flutter/material.dart';
import 'package:my_project/core/constant/color.dart';


class Buttoncustom extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const Buttoncustom({super.key, required this.textbutton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
         color: APPColor.primarycolor,
        width: double.infinity,
        child:  MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 13),
            onPressed: onPressed,
            child: Text(
              textbutton,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize:16,
                  fontWeight: FontWeight.bold),
            )
            ));
            
           
  }
}
