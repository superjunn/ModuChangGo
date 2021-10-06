import 'package:flutter/material.dart';
import 'package:moduchango/components/common/shelf_form2.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_page_components/storehouse_page_left_menu_bar.dart';

class StoreHouseContentsViewPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StoreHousePageLeftMenuBar(),
        ShelfForm2(),
      ],
    );
  }
}
