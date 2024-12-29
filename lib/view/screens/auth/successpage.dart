import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/view/screens/homescreen.dart';
import 'package:my_project/view/widget/auth/buttoncustom.dart';

//import 'products.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: APPColor.background,
        elevation: 0,
        title: Text('Welcome to our app',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: APPColor().grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 100, bottom: 100),
                child: Icon(Icons.check_circle_outline,
                    size: 300, color: Color(0xff16285a)),
              ),
            ),
            SizedBox(
              width: 150,
              child: Buttoncustom(
                textbutton: "Next",
                onPressed: () {
                  Get.to(const Homescreen());
                  // controller.login();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
