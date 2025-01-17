import 'package:flutter/material.dart';

class Customitemcartlist extends StatelessWidget {
  final String name;
  final String price;
  final String count;
  final VoidCallback? onAdd;
  final VoidCallback? onRemove;
  final String status;
  final bool isCanceled;
  final VoidCallback onDelete;

  const Customitemcartlist({
    super.key,
    required this.name,
    required this.price,
    required this.count,
    this.onAdd,
    this.onRemove,
    required this.status,
    required this.isCanceled,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Price: $price'),
            Text('Quantity: $count'),
            Text('Status: $status',
                style: TextStyle(
                  color: _getStatusColor(
                      status), 
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!isCanceled) ...[
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: onRemove,
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: onAdd,
              ),
            ],
            if (status.toLowerCase() !=
                'canceled') 
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: onDelete,
              ),
          ],
        ),
      ),
    );
  }

   Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'in preparation':
        return Colors.orange;
      case 'modified':
        return Colors.green;
      case 'in delivery':
        return Colors.amber;
      case 'canceled':
        return Colors.red;
      default:
        return Colors.black;
    }
  }
}
