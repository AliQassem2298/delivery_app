import 'package:flutter/material.dart';

class Customtextform extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController mycontroller;
  final FormFieldValidator<String>? validator;
  TextInputType keyboardType;

  Customtextform({
    super.key,
    required this.hinttext,
    required this.labeltext,
    required this.iconData,
    required this.mycontroller,
    required this.keyboardType,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: TextFormField(
          keyboardType: keyboardType,
          controller:
              mycontroller, ////////////////////??????????????????????????!!!!!!!!!!!!!!!!!!!!!!!!!

          validator: validator,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(labeltext,
                  style: const TextStyle(color: Color(0xff3681AB))),
            ),
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 14),
            suffixIcon: Icon(
              iconData,
              color: const Color(0xff3681AB),
            ),
            border:
                const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.zero)),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff3681AB)),
            ),
          )),
    );
  }
}
