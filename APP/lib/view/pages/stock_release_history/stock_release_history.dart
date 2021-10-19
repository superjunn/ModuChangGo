import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango_app/controller/history_controller.dart';
import 'package:moduchango_app/view/pages/stock_release_history/history_components/custom_history_tile.dart';

class StockReleaseHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HistoryController h = Get.put(HistoryController());

    return Obx(() => Column(
          children: List.generate(h.history.length, (i) {
            return CustomHistoryTile(
              id: h.history[i].id,
              NIIN: h.history[i].NIIN,
              productName: h.history[i].productName,
              state: h.history[i].state,
              storageName: h.history[i].storageName,
              time: h.history[i].time,
            );
          }),
        ));
  }
}
