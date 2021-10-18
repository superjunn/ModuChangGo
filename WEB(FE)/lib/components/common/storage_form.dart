import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/components_detail/storage_image.dart';
import 'package:moduchango/design_data/styles.dart';
import 'package:moduchango/pages/history_page/history_byStorage_page/history_byStorage_view_page.dart';
import 'package:moduchango/pages/home_page/home_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_delete/storehouse_delete_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_edit/storehouse_edit_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_init/storage_init_page.dart';
import 'package:moduchango/pages/test_page/test_page.dart';

class StorageForm extends StatelessWidget {
  final formWidth;
  final Status stat;
  final String storageName;
  final String location;
  final int image_id;

  const StorageForm({
    required this.formWidth,
    this.stat = Status.view,
    required this.storageName,
    required this.location,
    required this.image_id,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          if (stat == Status.view) {
            Get.to(() => TestPage());
          } else if (stat == Status.init) {
            Get.to(() => StorageInitPage());
          } else if (stat == Status.edit) {
            Get.to(() => StorageEditPage());
          } else if (stat == Status.delete) {
            Get.to(() => StoreHouseDeletePage());
            // 여기 딜리트 페이지로 가는게 아니라 alert 띄워야됨
          } else if (stat == Status.history) {
            Get.to(() => HistoryByStorageViewPage());
          } else {
            print("Error");
            HomePage();
          }
        },
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 5,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white70,
            ),
            width: formWidth,
            // height: formHeight,
            child: Column(
              children: [
                StorageImage(image_id: image_id),
                Text("$storageName", style: hbody()),
                Text("$storageName", style: hbody()),
                Text("$location", style: hbody()),
                SizedBox(
                  // height: 30,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Get.to(() => StorageEditPage());
                          },
                          child: Text("수정"),
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              alignment: Alignment.center),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: Text("삭제"),
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              alignment: Alignment.center),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum Status {
  view,
  init,
  edit,
  delete,
  history,
}
