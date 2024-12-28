// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:my_project/controller/auth/forgetPassowrd_controller.dart';

// import 'package:my_project/controller/auth/signup_controller.dart';
// import 'package:my_project/core/constant/color.dart';
// import 'package:my_project/view/widget/auth/addImage.dart';
// import 'package:my_project/view/widget/auth/buttoncustom.dart';
// import 'package:my_project/view/widget/auth/customlogIn.dart';
// import 'package:my_project/view/widget/auth/customtextbody.dart';
// import 'package:my_project/view/widget/auth/customtextform.dart';
// import 'package:my_project/view/widget/auth/customtexttitle.dart';

// class Forgetpassword extends StatelessWidget {
//   const Forgetpassword({super.key});

//   @override
//   Widget build(BuildContext context) {
//    ForgetPasswordControllerImp controller= Get.put(ForgetPasswordControllerImp());
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: APPColor.background,
//           elevation: 0,
//           title: Text('forget password',
//               style: Theme.of(context)
//                   .textTheme
//                   .headlineMedium!
//                   .copyWith(color: APPColor().grey)),
//         ),
//         body: Container(
//             color: APPColor.background,
//             padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
//             child: ListView(
//               children: [
                
//                 Customtexttitle(
//                   title: "Welcome",
//                 ),
//                 SizedBox(height: 10),
//                 Customtextbody(
//                   text: "Sign up and start ordering!",
//                 ),
//                 SizedBox(height: 17),
//                 Addimage(),
//                 SizedBox(height: 20),
//                 Customtextform(

//                   hinttext: "Enter your first name ",
//                   iconData: Icons.person_outlined,
//                   labeltext: "First Name",
//                  mycontroller: controller.firstname,
//                 ),
//                 Customtextform(
//                   hinttext: "Enter your last name ",
//                   iconData: Icons.person_outlined,
//                   labeltext: "Last Name",
//                   mycontroller: controller.lastname,
//                 ),
//                 Customtextform(
//                   hinttext: "Enter your phone number ",
//                   iconData: Icons.phone,
//                   labeltext: "Phone Number",
//                  mycontroller: controller.number,
//                 ),
//                 Customtextform(
//                   hinttext: "Enter password ",
//                   iconData: Icons.password,
//                   labeltext: "Password",
//                   mycontroller: controller.password,
//                 ),
//                 Buttoncustom(
//                   textbutton: "Sign up",
//                   onPressed:(){},
//                 ),
//                   SizedBox(
//                  height: 5,
//                ),
//                 Customlogin(
//                   text2: "  have an account? ",
//                   text1: "Log In",
//                   onTap: (){
//                     controller.goTologin();
//                   },
//                 )
//               ],
//             )));
//   }
// }
