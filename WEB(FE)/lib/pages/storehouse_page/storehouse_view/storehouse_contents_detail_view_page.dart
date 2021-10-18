import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/contents_tile.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/controller/storage_controller.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_page_components/storehouse_page_left_menu_bar.dart';

class StoreHouseContentsDetailViewPage extends StatelessWidget {
  var refreshKey = GlobalKey<RefreshIndicatorState>();

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
    StorageController s = Get.find();

    Obx(
      () => RefreshIndicator(
        key: refreshKey,
        onRefresh: () async {
          await s.findAll();
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StoreHousePageLeftMenuBar(),
            Expanded(
              child: Wrap(
                spacing: 10,
                children: List.generate(
                  s.contents.length,
                  (index) => ContentsTile(
                    contentsName: "${s.contents[index].contentName}",
                    image: "${s.contents[index].amount}",
                    niin: "${s.contents[index].niin}",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
