import 'package:flutter/material.dart';

class Customitemcartlist extends StatelessWidget {
  final String name;
  final String price;
  final String count;
  final String status;
  final bool isCanceled;
  final void Function()? onAdd;
  final void Function()? onRemove;
  final void Function()? onDelete;
  final void Function()? onModify;

  const Customitemcartlist({
    super.key,
    required this.name,
    required this.price,
    required this.count,
    required this.status,
    required this.isCanceled,
    this.onAdd,
    this.onRemove,
    this.onDelete,
    this.onModify,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: ListTile(
              title: Text(name, style: const TextStyle(fontSize: 17)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(price, style: const TextStyle(color: Colors.blue, fontSize: 17)),
                  Text(status, style: TextStyle(color: isCanceled ? Colors.red : Colors.black, fontSize: 15)),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                IconButton(onPressed: onAdd, icon: const Icon(Icons.add)),
                Text(count, style: const TextStyle(fontSize: 20)),
                IconButton(onPressed: onRemove, icon: const Icon(Icons.remove)),
                IconButton(onPressed: onDelete, icon: const Icon(Icons.delete)),
                IconButton(onPressed: onModify, icon: const Icon(Icons.edit)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
