//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//import 'package:my_project/core/constant/color.dart';
import 'package:my_project/core/constant/routes.dart';
import 'package:my_project/core/localization/changelocal.dart';
import 'package:my_project/view/widget/language/custombuttonlang.dart';

class Language extends GetView<localcontroller> {
  Language({super.key});

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(80),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          '1'.tr,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        SizedBox(height: 25),
        Custombuttonlang(
            textbutton: "Ar",
            OnPressed: () {
              controller.changelang('Ar');
              Get.toNamed(AppRout.onbording);
            }),
        SizedBox(
          height: 15,
        ),
        Custombuttonlang(
          textbutton: "En",
          OnPressed: () {
            controller.changelang('En');
            Get.toNamed(AppRout.onbording);
          },
        )
      ]),
    ));
  }
}
