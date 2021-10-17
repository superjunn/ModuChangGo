import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/components/common/storage_form.dart';
import 'package:moduchango/controller/storage_controller.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/history_page/history_page_components/history_page_left_menu_bar.dart';

class HistoryByStorageSelectPage extends StatelessWidget {
  var refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    StorageController s = Get.find();

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

    return Obx(
      () => RefreshIndicator(
        key: refreshKey,
        onRefresh: () async {
          await s.findAll();
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HistoryPageLeftMenuBar(),
            Expanded(
              child: Wrap(
                spacing: 10,
                children: List.generate(
                  s.storages.length,
                  (index) => StorageForm(
                    storageName: s.storages[index].storageName!,
                    location: s.storages[index].location!,
                    image_id: s.storages[index].image!,
                    formWidth: storage_edge_b,
                    stat: Status.history,
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
