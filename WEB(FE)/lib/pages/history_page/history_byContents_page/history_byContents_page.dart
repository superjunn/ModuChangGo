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
    return Obx(
      () => RefreshIndicator(
        key: refreshKey,
        onRefresh: () async {
          s.findByName(storageName);
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HistoryPageLeftMenuBar(),
            Expanded(
              child: Wrap(
                spacing: 10,
                children: List.generate(
                    s.contents.length,
                    (index) => ContentsTile(
                          // contentsName: "${s.contents[index].contentName}",
                          // amount: "${s.contents[index].amount}",
                          // niin: "${s.contents[index].niin}",
                          contentsName: "방상외피",
                          amount: "19",
                          niin: "123-456456",
                        )),
              ),
            ),
            Text("history by contentspagebody"),
          ],
        ),
      ),
    );
  }
}
