import 'package:flutter/material.dart';
import 'package:my_project/core/constant/color.dart';

class Store extends StatelessWidget {
  const Store({
    super.key,
    required this.images,
    required this.names,
    this.price = '',
    this.onFavoritePressed,
  });

  final String images;
  final String names;
  final String price;
  final VoidCallback? onFavoritePressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Card(
          elevation: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Image.asset(images)),
              const SizedBox(height: 10),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        names,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: APPColor.primarycolor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            price,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: APPColor.primarycolor,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          if (onFavoritePressed != null)
                            IconButton(
                              icon: const Icon(Icons.favorite_border),
                              color: APPColor.primarycolor,
                              onPressed: onFavoritePressed,
                            ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
