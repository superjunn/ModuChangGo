import 'package:flutter/material.dart';

class StorageImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(
            "https://picsum.photos/240/120",
          ),
          Positioned(
            child: Text(
              "Storage Name",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
