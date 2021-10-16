import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/page_left_menu_bar.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_init/storage_init_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_view/storehouse_my_storages_view_page.dart';

class StoreHousePageLeftMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageLeftMenuBar(
      title: "창고 현황",
      functionsList: [
        "창고 보기",
        "창고 만들기",
        "창고 수정",
        "창고 삭제",
      ],
      funpageRouteList: [
        () => Get.to(() => StoreHouseMyStoragesViewPage()),
        () => Get.to(() => StorageInitPage()),
        () => Get.to(() => StoreHouseMyStoragesViewPage()),
        () => Get.to(() => StoreHouseMyStoragesViewPage()),
      ],
    );
  }
}
