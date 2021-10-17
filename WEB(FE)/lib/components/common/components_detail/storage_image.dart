import 'package:flutter/material.dart';
import 'package:moduchango/design_data/styles.dart';

class StorageImage extends StatelessWidget {
  final image_id;

  const StorageImage({required this.image_id});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: 270,
              height: 120,
              child: Image.network(
                "https://picsum.photos/id/$image_id/270/120",
                fit: BoxFit.cover,
              ),
            ),
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
