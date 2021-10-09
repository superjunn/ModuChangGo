import 'package:flutter/material.dart';
import 'package:moduchango_app/view/pages/storage/storage_components/custom_contents_tile.dart';

class StockReleaseHistory extends StatelessWidget {
  final contents = List.generate(20, (i) {
    return CustomContentsTile(
      content_amount: 12,
      content_name: "방상외피",
    );
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: contents,
    );
  }
}
