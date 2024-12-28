import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/core/localization/changelocal.dart';
import 'package:my_project/core/localization/translation.dart';
import 'package:my_project/core/services/services.dart';
//import 'package:my_project/core/services/services.dart';
import 'package:my_project/routs.dart';

import 'package:my_project/view/screens/language.dart';

//import 'package:my_project/view/screens/onbording.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialservices();
 
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    localcontroller controller = Get.put(localcontroller());
    return GetMaterialApp(
      translations: Mytranslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.languge,
      home: Language(),
      routes: routes,
    );
  }
}
