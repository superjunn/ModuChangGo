import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/components_detail/storage_image.dart';
import 'package:moduchango/controller/storage_controller.dart';
import 'package:moduchango/design_data/styles.dart';
import 'package:moduchango/pages/history_page/history_byContents_page/history_byContents_page.dart';
import 'package:moduchango/pages/home_page/home_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_edit/storehouse_edit_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_init/storage_init_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_view/storehouse_contents_detail_view_page.dart';

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
    StorageController s = Get.put(StorageController());
    s.findAll();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          if (stat == Status.view) {
            s.findByName("$storageName");
            Get.to(() =>
                StoreHouseContentsDetailViewPage(storageName: storageName));
          } else if (stat == Status.init) {
            Get.to(() => StorageInitPage());
          } else if (stat == Status.edit) {
            Get.to(() => StorageEditPage(storageName: storageName));
          } else if (stat == Status.delete) {
            s.deleteByName("$storageName");
            Get.to(() => HomePage());
            // 여기 딜리트 페이지로 가는게 아니라 alert 띄워야됨
          } else if (stat == Status.history) {
            Get.to(() => HistoryByContentsPage());
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
                StorageImage(image_id: image_id, storageName: storageName),
                Text("창고 이름 : $storageName", style: hbody(), maxLines: 1),
                Text("창고 위치 : $location", style: hbody(), maxLines: 1),
                SizedBox(
                  // height: 30,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Get.to(() => StorageEditPage(
                                  storageName: storageName,
                                  image: image_id,
                                  location: location,
                                ));
                          },
                          child: Text("수정"),
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              alignment: Alignment.center),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            StorageController s = Get.put(StorageController());
                            s.deleteByName(storageName);
                          },
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
