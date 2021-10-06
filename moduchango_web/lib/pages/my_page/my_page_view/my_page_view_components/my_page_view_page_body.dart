import 'dart:html';

import 'package:flutter/material.dart';
import 'package:moduchango/pages/my_page/my_page_components/my_page_left_menu_bar.dart';

class MyPageViewPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyPageLeftMenuBar(),
        Text("마이 페이지 정보보기 페이지"),
      ],
    );
  }
}
