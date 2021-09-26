import 'package:flutter/material.dart';
import 'package:moduchango/components/common/storage_image.dart';

class Storage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      width: 150,
      height: 150,
      child: Column(
        children: [
           SizedBox(
             width: 150,
             height: 100,
             child: StorageImage(),
           ),
           Text("Storage_sample"),
        ],
      ),
    );
  }
}