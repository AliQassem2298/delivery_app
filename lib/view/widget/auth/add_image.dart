import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_project/core/constant/imageasset.dart';

class Addimage extends StatefulWidget {
  const Addimage({super.key});

  @override
  State<Addimage> createState() => _AddimageState();
}

class _AddimageState extends State<Addimage> {
  File? _file;

  void pickercamera() async {
    final myfile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (myfile != null) {
      setState(() {
        _file = File(myfile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(300)),
                child: _file == null
                    ? Column(
                        children: [
                          Image.asset(
                            AppImageasset.person,
                            fit: BoxFit.cover,
                            width: 200,
                            height: 200,
                          ),
                        ],
                      )
                    : Image.file(
                        _file!,
                        fit: BoxFit.cover,
                        width: 200,
                        height: 200,
                      ),
              ),
              // MaterialButton(
              //   onPressed: pickercamera,
              //   child: const Icon(Icons.camera_alt),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
