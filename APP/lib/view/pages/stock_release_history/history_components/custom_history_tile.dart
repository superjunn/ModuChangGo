import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango_app/view/pages/stock_release_history/stock_release_detail_page.dart';

class CustomHistoryTile extends StatelessWidget {
  final String? id;
  final String? NIIN;
  final String? productName;
  final String? storageName;
  final String? state;
  final DateTime? time;

  CustomHistoryTile({
    this.id,
    this.NIIN,
    this.productName,
    this.storageName,
    this.state,
    this.time,
  });

  @override
  Widget build(BuildContext context) {
    if (this.state == "입고") {
      return ListTile(
        leading: Text("입고", style: TextStyle(color: Colors.green)),
        title: Text("${this.productName}"),
        subtitle: Text("창고: ${this.storageName}"),
        onTap: () {
          Get.to(() => StockReleaseDetailPage(
                id: this.id,
                NIIN: this.NIIN,
                productName: this.productName,
                state: this.state,
                storageName: this.storageName,
                time: this.time,
              ));
        },
      );
    } else {
      return ListTile(
        leading: Text("출고", style: TextStyle(color: Colors.redAccent)),
        title: Text("${this.productName}"),
        subtitle: Text("창고: ${this.storageName}"),
        onTap: () {
          Get.to(() => StockReleaseDetailPage(
                id: this.id,
                NIIN: this.NIIN,
                productName: this.productName,
                state: this.state,
                storageName: this.storageName,
                time: this.time,
              ));
        },
      );
    }
  }
}
