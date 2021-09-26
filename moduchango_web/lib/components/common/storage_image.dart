import 'package:flutter/material.dart';

class StorageImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.network("https://picsum.photos/150/100"),
          Positioned(
            bottom: 0,
            
            child: Text(
              "Storage Name",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        ],
        
      ),
    );
  }
}
