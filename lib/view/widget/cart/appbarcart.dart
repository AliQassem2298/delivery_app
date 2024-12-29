import 'package:flutter/material.dart';
import 'package:get/get.dart';

class topappbaecart extends StatelessWidget {
  const topappbaecart({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          alignment: Alignment.centerLeft,
          child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back)),
        )),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
