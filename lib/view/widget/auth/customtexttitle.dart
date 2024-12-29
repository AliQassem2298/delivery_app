import 'package:flutter/material.dart';

class Customtexttitle extends StatelessWidget {
  final String title;
  const Customtexttitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  textAlign: TextAlign.center,
                );
  }
}