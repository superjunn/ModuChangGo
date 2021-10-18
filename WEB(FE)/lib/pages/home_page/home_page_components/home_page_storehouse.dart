import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/storage_form.dart';
import 'package:moduchango/components/common/storage_init_form_.dart';
import 'package:moduchango/controller/holder_controller.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/design_data/styles.dart';

class HomePageStoreHouse extends StatelessWidget {
  var refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    HolderController h = Get.put(HolderController());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Obx(
        () => RefreshIndicator(
          key: refreshKey,
          onRefresh: () async {
            await h.findAll();
          },
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("창고 보기 창고 개수 : ${h.holders.length}, ${h.holders}",
                        style: h2_5()),
                  ],
                ),
                SizedBox(height: gap_s),
                Obx(
                  () => Wrap(
                    children: List.generate(
                      (h.holders.length + 1 - 94),
                      (index) {
                        if (index != h.holders.length - 94) {
                          return StorageForm(
                            formWidth: storage_edge_s,
                            storageName: h.holders[index].body!,
                            location: h.holders[index].title!,
                            image_id: h.holders[index].id!,
                          );
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
