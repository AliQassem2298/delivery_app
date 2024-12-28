import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_project/core/constant/color.dart';
import 'package:my_project/core/constant/routes.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: APPColor.background,
        title: Text("address"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.toNamed(AppRout.add);
      },child: Icon(Icons.add,color: Colors.white,),backgroundColor: APPColor.primarycolor,),
      body: Container(
        child: ListView(
          
        ),
      ),
    );
  }
}