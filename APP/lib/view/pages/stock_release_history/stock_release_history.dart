import 'package:flutter/material.dart';
import 'package:moduchango_app/view/design/size.dart';
import 'package:moduchango_app/view/pages/components/page_drawer.dart';

class StockReleaseHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: medium_gap),
        // StorageDetailPageImages(storage_index: this.storage_index),
        SizedBox(height: medium_gap),
        // StorageDetailPageContents(storage_name: this.storage_name),
      ],
    );
  }
}
