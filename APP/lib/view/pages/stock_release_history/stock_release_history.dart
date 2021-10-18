import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango_app/controller/history_controller.dart';
import 'package:moduchango_app/view/pages/stock_release_history/custom_history_tile.dart';

class StockReleaseHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HistoryController h = Get.find();

    return Obx(() => Column(
          children: List.generate(h.history.length, (i) {
            return CustomHistoryTile();
          }),
        ));
  }
}
