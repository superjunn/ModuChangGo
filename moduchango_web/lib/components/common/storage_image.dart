import 'package:flutter/material.dart';
import 'package:moduchango/design_data/styles.dart';

class StorageImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network("https://picsum.photos/270/120"),
          ),
          Positioned(
            child: Text(
              "훈련용 창고",
              style: h2(mColor: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
