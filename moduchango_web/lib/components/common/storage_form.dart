import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/storage_image.dart';
import 'package:moduchango/design_data/styles.dart';
import 'package:moduchango/pages/history_page/history_byDate_page/history_byDate_view_page.dart';
import 'package:moduchango/pages/home_page/home_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_delete/storehouse_delete_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_edit/storehouse_edit_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_init/storage_init_page.dart';
import 'package:moduchango/pages/test_page/test_page.dart';

class StorageForm extends StatelessWidget {
  final formWidth;
  final formHeight;
  final Status stat;

  const StorageForm({
    required this.formWidth,
    required this.formHeight,
    this.stat = Status.view,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            if (stat == Status.view) {
              Get.to(() => TestPage());
            } else if (stat == Status.init) {
              Get.to(() => StorageInitPage());
            } else if (stat == Status.edit) {
              Get.to(() => StoreHouseEditPage());
            } else if (stat == Status.delete) {
              Get.to(() => StoreHouseDeletePage());
            } else if (stat == Status.history) {
              Get.to(() => HistoryByDateViewPage());
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
                height: formHeight,
                child: Column(
                  children: [
                    StorageImage(),
                    Text("훈련용 창고", style: hbody()),
                    Text("선반 개수 : 5개", style: hbody()),
                    Text("전투연병장 뒤쪽", style: hbody()),
                    SizedBox(
                      height: 15,
                      child: Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Get.to(() => StoreHouseEditPage());
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
                )),
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
