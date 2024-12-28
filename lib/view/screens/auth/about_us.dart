import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us:"),
      ),
      body: Container(

        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
                "About Us:  Welcome to [Speed delivery], your trusted partner in seamless and reliable delivery services. Our mission is to connect people with their favorite stores, and services, making life more convenient and enjoyable. Founded with a passion for efficiency and innovation, we pride ourselves on delivering not just goods, but exceptional experiences. ",style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        ),
      
    );
  }
}
