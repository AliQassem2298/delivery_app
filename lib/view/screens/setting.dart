import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/controller/auth/login_controller.dart';

import 'package:my_project/view/screens/auth/about_us.dart';
import 'package:my_project/view/screens/auth/contact_us.dart';
import 'package:my_project/view/screens/auth/login.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Container(
        child: Stack(children: [
      Container(
          color: Colors.white,
          child: Column(children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 230,
                  color: Color(0xff16285a),
                ),
                Positioned(
                  top: 180,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                            'assets/images/photo_2024-12-21_18-03-36.jpg')),
                  ),
                )
              ],
            ),
            SizedBox(height: 100),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Card(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                      //onTap: () {},
                      title: Text("Disable Notification"),
                      trailing: Switch(
                        onChanged: (val) {},
                        value: true,
                      )),
                  //SizedBox(height: 10),

                  SizedBox(height: 10),

                  ListTile(
                    onTap: () {
                      Get.to(AboutUs());
                    },
                    title: Text("About us "),
                    trailing: Icon(Icons.question_mark),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(ContactUs());
                    },
                    title: Text("Contact us "),
                    trailing: Icon(Icons.phone),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(login());
                    },
                    title: Text("Logout "),
                    trailing: Icon(Icons.exit_to_app),
                  ),
                ],
              )),
            )
          ]))
    ]));
  }
}
