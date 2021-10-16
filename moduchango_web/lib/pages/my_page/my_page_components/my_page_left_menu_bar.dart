import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/page_left_menu_bar.dart';
import 'package:moduchango/pages/my_page/my_page_edit/my_page_edit_page.dart';
import 'package:moduchango/pages/my_page/my_page_view/my_page_view_page.dart';

class MyPageLeftMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageLeftMenuBar(
      title: "마이 페이지",
      functionsList: [
        "회원정보 보기",
        "회원정보 수정",
      ],
      funpageRouteList: [
        () => Get.to(() => MyPageViewPage()),
        () => Get.to(() => MyPageEditPage()),
      ],
    );
  }
}
