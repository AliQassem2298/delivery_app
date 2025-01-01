//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//import 'package:my_project/core/constant/color.dart';
import 'package:my_project/core/constant/routes.dart';
import 'package:my_project/core/localization/changelocal.dart';
import 'package:my_project/view/widget/language/custombuttonlang.dart';

class Language extends GetView<localcontroller> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(70),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          '1'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const SizedBox(height: 25),
        Custombuttonlang(
            textbutton: "Ar",
            OnPressed: () {
              controller.changelang('Ar');
              Get.toNamed(AppRout.onbording);
            }),
        const SizedBox(
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
