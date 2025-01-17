import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:my_project/controller/verified_code_controller.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/services/register_service.dart';
import 'package:my_project/view/widget/auth/customtextbody.dart';
import 'package:my_project/view/widget/auth/customtexttitle.dart';

class Verifycode extends StatelessWidget {
  const Verifycode({super.key});

  @override
  Widget build(BuildContext context) {
    verifycodecontrollerIm controller = Get.put(verifycodecontrollerIm());
    final Map<String, dynamic> args = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: APPColor.background,
        elevation: 0.0,
        title: Text(
          "Verification Code",
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: APPColor.primarycolor,
              ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const Customtexttitle(title: "Check Code"),
            const SizedBox(height: 10),
            const Customtextbody(
                text: "Please Enter The Digit Code Sent To Your Number"),
            const SizedBox(height: 15),
            OtpTextField(
              numberOfFields: 5,
              borderRadius: BorderRadius.circular(15),
              borderColor: const Color(0xFF512DA8),
              showFieldAsBox: true,
              onSubmit: (String verificationCode) async {
                controller.loadingIndicatorTrue();

                try {
                  await RegisterService().register(
                    firstName: args['firstName'],
                    lastName: args['lastName'],
                    phoneNumber: args['phoneNumber'],
                    password: args['password'],
                    passwordConfirmation: args['passwordConfirmation'],
                    verifiedCode: int.parse(verificationCode),
                  );

                  Get.snackbar(
                    'Success',
                    'User Registered Successfully',
                    colorText: Colors.white,
                    backgroundColor: Colors.green,
                  );
                  controller.goTosuccesspage();
                } catch (e) {
                  Get.snackbar(
                    'Error',
                    e.toString(),
                    colorText: Colors.white,
                    backgroundColor: Colors.red,
                  );
                }

                controller.loadingIndicatorFalse();
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
