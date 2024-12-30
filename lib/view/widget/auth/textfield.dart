// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class Textfield extends StatelessWidget {
//  final void Function(String)? onChanged;
// final String labelText;
//   const Textfield({super.key, this.onChanged, required this.labelText});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//        margin:const EdgeInsets.only(bottom: 10),
//       child:  TextField(
//                 onChanged: onChanged,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: labelText,
//                   border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.zero)),
//         focusedBorder: const OutlineInputBorder(
//           borderSide: BorderSide(color: Color(0xff3681AB)),

//         ),
//                 ),
//               ),
//     );
//   }
// }

class CustomContainer extends StatelessWidget {
  CustomContainer({
    super.key,
    required this.text,
  });
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff3681AB)),
      ),
      child: Text(text).paddingSymmetric(horizontal: 10, vertical: 12),
    ).paddingOnly(bottom: 10);
  }
}
