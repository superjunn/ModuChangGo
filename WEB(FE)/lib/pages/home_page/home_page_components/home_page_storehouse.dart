import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/storage_form.dart';
import 'package:moduchango/components/common/storage_init_form_.dart';
import 'package:moduchango/controller/storage_controller.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/design_data/styles.dart';
import 'package:moduchango/domain/storage/storage.dart';

class HomePageStoreHouse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    StorageController _storageController = Get.put(StorageController());
    _storageController.findAll();
    final List<Storage> storages = _storageController.storages;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("창고 보기 창고 개수 : ${storages.length}, ${storages}", style: h2_5()),
              ],
            ),
            SizedBox(height: gap_s),
            Obx(
              () => Wrap(
                children: List.generate(
                  (storages.length + 1),
                  (index) {
                    if (index != storages.length) {
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
    );
  }
}
