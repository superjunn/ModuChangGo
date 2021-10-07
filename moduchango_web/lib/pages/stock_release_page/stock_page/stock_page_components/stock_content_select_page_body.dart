import 'package:flutter/material.dart';
import 'package:moduchango/components/common/shelf_form2.dart';
import 'package:moduchango/pages/stock_release_page/stock_release_page_components/stock_release_page_left_menu_bar.dart';

class StockContentSelectPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StockReleasePageLeftMenuBar(),
        ShelfForm2(),
      ],
    );
  }
}
