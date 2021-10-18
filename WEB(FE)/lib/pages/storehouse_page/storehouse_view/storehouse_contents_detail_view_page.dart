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
  final String storageName;

  StoreHouseContentsDetailViewPage({required this.storageName});

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

    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StoreHousePageLeftMenuBar(),
        Expanded(
          child: Wrap(
            spacing: 10,
            children: List.generate(
                3,
                (index) => ContentsTile(
                      contentsName: "방상외피",
                      amount: "훈련용창고",
                      niin: "띠바",
                    )),
          ),
        ),
      ],
    );
  }
}
