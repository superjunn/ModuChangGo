import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/contents_tile.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/controller/storage_controller.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/history_page/history_page_components/history_page_left_menu_bar.dart';

class HistoryByContentsPage extends StatelessWidget {
  var refreshKey = GlobalKey<RefreshIndicatorState>();
  final String storageName;

  HistoryByContentsPage({this.storageName = "운영창고"});

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    double currentSize = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          PageHeader(),
          Align(
            child: SizedBox(
              width: currentSize < 340 ? double.infinity : bodyWidth,
              child: _buildBody(),
            ),
          ),
          PageFooter(),
        ],
      ),
    );
  }

  _buildBody() {
    StorageController s = Get.put(StorageController());
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HistoryPageLeftMenuBar(),
        Expanded(
          child: Wrap(
            spacing: 10,
            children: [
              ContentsTile(
                  contentsName: "위생복 상의(하기용)M95",
                  niin: "5432-104829421",
                  amount: "37"),
              ContentsTile(
                  contentsName: "수통", niin: "3454-482910482", amount: "5"),
              ContentsTile(
                  contentsName: "위생복 하의(하기용)",
                  niin: "5428-583028102",
                  amount: "20"),
            ],
          ),
        ),
      ],
    );
  }
}
