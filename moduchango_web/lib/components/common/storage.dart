import 'package:flutter/material.dart';

class Storage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      child: Column(
        children: [
           SizedBox(
             width: 150,
             height: 100,
             child: Image.asset("assets/images_sample/p1.jpeg"),
           ),
           Text("Storage_sample"),
        ],
      ),
    );
  }
}