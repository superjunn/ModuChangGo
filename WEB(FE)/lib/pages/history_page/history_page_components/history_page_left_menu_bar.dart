import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/page_left_menu_bar.dart';
import 'package:moduchango/pages/history_page/history_byContents_page/history_byContents_page.dart';

class HistoryPageLeftMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageLeftMenuBar(
      title: "입/출고 내역",
      functionsList: ["입/출고 내역 보기"],
      funpageRouteList: [
        () => Get.to(() => HistoryByContentsPage()),
      ],
    );
  }
}
