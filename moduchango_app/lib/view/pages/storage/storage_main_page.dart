import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango_app/view/design/colors.dart';
import 'package:moduchango_app/view/pages/stock_release_history/stock_release_history.dart';

class StorageMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double bodyWidth = MediaQuery.of(context).size.width * 0.6;
    double currentSize = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Align(
          child: SizedBox(
              // width: currentSize < 340 ? double.infinity : bodyWidth,
              // child: StoreHouseMyStoragesViewPageBody(),
              ),
        ),
      ],
    );
  }
}
