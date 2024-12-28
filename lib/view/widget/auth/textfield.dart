import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
 final void Function(String)? onChanged;
final String labelText;
  const Textfield({super.key, this.onChanged, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
       margin:const EdgeInsets.only(bottom: 10),
      child:  TextField(
                onChanged: onChanged,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: labelText,
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.zero)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff3681AB)),
          
        ),
                ),
              ),
    );
  }
}