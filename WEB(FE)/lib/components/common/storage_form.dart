import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/components_detail/storage_image.dart';
import 'package:moduchango/controller/storage_controller.dart';
import 'package:moduchango/design_data/styles.dart';
import 'package:moduchango/pages/history_page/history_byStorage_page/history_byStorage_view_page.dart';
import 'package:moduchango/pages/home_page/home_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_delete/storehouse_delete_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_edit/storehouse_edit_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_init/storage_init_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_view/storehouse_contents_detail_view_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_view/storehouse_my_storages_view_page.dart';
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
    StorageController s = Get.find();
    s.findAll();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          if (stat == Status.view) {
            s.findByName("$storageName");
            Get.to(() => StoreHouseContentsDetailViewPage());
          } else if (stat == Status.init) {
            Get.to(() => StorageInitPage());
          } else if (stat == Status.edit) {
            s.findByName("$storageName");
            Get.to(() => StorageEditPage());
          } else if (stat == Status.delete) {
            s.findByName("$storageName");
            s.deleteByName(s.contents[0].storageName!);
            Get.to(() => HomePage());
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
                Text("창고 이름 : $storageName", style: hbody(), maxLines: 1),
                Text("창고 위치 : $location", style: hbody(), maxLines: 1),
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
