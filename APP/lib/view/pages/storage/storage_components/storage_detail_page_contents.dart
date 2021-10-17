import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango_app/controller/storage_controller.dart';
import 'package:moduchango_app/view/pages/storage/storage_components/custom_contents_tile.dart';

class StorageDetailPageContents extends StatelessWidget {
  final String? storage_name;
  StorageDetailPageContents({required this.storage_name});

  @override
  Widget build(BuildContext context) {
    StorageController s = Get.find();

    return Obx(() => Column(
          children: List.generate(s.contents.length, (i) {
            return CustomContentsTile(
              content_amount: s.contents[i].amount,
              content_name: "${s.contents[i].contentName}",
            );
          }),
        ));
  }
}
