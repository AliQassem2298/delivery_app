import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us:"),
      ),
      body: 
        const Center(
          child: Column(
            children: [
              Text(
                    "you can contact us : "
              ),
              SizedBox(height: 5,),
              Text("our number:99999999 ")
                ],   ),
        ),
     
       
      );
  }
}