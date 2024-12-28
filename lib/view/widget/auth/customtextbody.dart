import 'package:flutter/material.dart';

class Customtextbody extends StatelessWidget {
  final String text;
  const Customtextbody({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                );
  }
}