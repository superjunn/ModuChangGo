import 'package:flutter/material.dart';
import 'package:moduchango/components/common/shelf_form.dart';
import 'package:moduchango/pages/my_page/my_page_components/my_page_left_menu_bar.dart';

class MyPageEditPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyPageLeftMenuBar(),
        Text("마이 페이지 정보 수정 페이지"),
      ],
    );
  }
}
