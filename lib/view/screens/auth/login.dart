import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:my_project/controller/auth/login_controller.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/view/widget/auth/buttoncustom.dart';
import 'package:my_project/view/widget/auth/customtextbody.dart';
import 'package:my_project/view/widget/auth/customtextform.dart';
import 'package:my_project/view/widget/auth/customtexttitle.dart';
import 'package:my_project/view/widget/auth/logo.dart';
import 'package:my_project/view/widget/auth/customSignup.dart';

import 'successpage.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return PopScope(
          canPop: false, 
           onPopInvokedWithResult: (bool didPop, Object? result)  async {
            
         return Future.value(false);
           
          },
          child: Scaffold(
     
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: APPColor.background,
          elevation: 0,
          title: Text('Log In',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: APPColor().grey)),
        ),
        body: Container(
            color: APPColor.background,
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
            child: ListView(
              children: [
                Logo(),
                SizedBox(height: 17),
                Customtexttitle(
                  title: "Welcome Back",
                ),
                SizedBox(height: 17),
                Customtextbody(
                  text: "Log In with your Phone Number and Password.",
                ),
                SizedBox(height: 55),
                Customtextform(
                  mycontroller: controller.number,
                  hinttext: "Enter your phone number ",
                  iconData: Icons.phone,
                  labeltext: "Phone Number",
                ),
                Customtextform(
                  mycontroller: controller.password,
                  hinttext: "Enter your password ",
                  iconData: Icons.key,
                  labeltext: "password",
                ),
                // Text(
                //   "Forget Password",
                //   textAlign: TextAlign.end,
                // ),
                Buttoncustom(
                  textbutton: "Log In",
                  onPressed: () {
                    Get.to(SuccessSignup());
                    
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Customsignup(
                  text2: "  Don't have an account? ",
                  text1: "Sign Up",
                  onTap: () {
                    controller.goToSignup();
                  },
                )
              ],
            ))));
  } 
}
