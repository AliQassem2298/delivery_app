import 'package:flutter/material.dart';
import 'package:my_project/core/constant/color.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: APPColor.background,
        title: const Text("add new address"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: APPColor.primarycolor,child: const Icon(Icons.add,color: Colors.white,),),
      body: Container(
        child: ListView(
          
        ),
      ),
    );
  }
}