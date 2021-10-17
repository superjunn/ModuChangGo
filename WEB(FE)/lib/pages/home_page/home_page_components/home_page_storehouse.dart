import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/storage_form.dart';
import 'package:moduchango/components/common/storage_init_form_.dart';
import 'package:moduchango/controller/storage_controller.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/design_data/styles.dart';

class HomePageStoreHouse extends StatelessWidget {
  var refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    StorageController s = Get.put(StorageController());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Obx(
        () => RefreshIndicator(
          key: refreshKey,
          onRefresh: () async {
            await s.findAll();
          },
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("창고 보기 창고 개수 : ${s.storages.length}, ${s.storages}",
                        style: h2_5()),
                  ],
                ),
                SizedBox(height: gap_s),
                Obx(
                  () => Wrap(
                    children: List.generate(
                      (s.storages.length + 1),
                      (index) {
                        if (index != s.storages.length) {
                          return StorageForm(formWidth: storage_edge_s);
                        } else {
                          return StorageInitForm(formWidth: storage_edge_s);
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
