import 'package:flutter/material.dart';
import 'package:my_project/core/constant/imageasset.dart';

class Customitemcartlist extends StatelessWidget {
  final String name;
  final String price;
  final String count;
  //final String imagename;
  final void Function()? onAdd;
  final void Function()? onRemove;
  const Customitemcartlist({
    super.key,
    required this.name,
    required this.price,
    required this.count,
    this.onAdd,
    this.onRemove, 
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(AppImageasset.logo),
          ),
          Expanded(
              flex: 3,
              child: ListTile(
                title: Text(
                  name,
                  style: const TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  price,
                  style: const TextStyle(color: Colors.blue, fontSize: 17),
                ),
              )),
          Expanded(
              child: Column(
            children: [
              IconButton(onPressed: onAdd, icon: const Icon(Icons.add)),
              Text(
                count,
                style: const TextStyle(fontSize: 20),
              ),
              IconButton(onPressed: onRemove, icon: const Icon(Icons.remove)),
            ],
          )),
        ],
      ),
    );
  }
}
