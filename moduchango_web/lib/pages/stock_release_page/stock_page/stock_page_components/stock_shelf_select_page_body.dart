import 'package:flutter/material.dart';
import 'package:moduchango/components/common/shelf_form.dart';
import 'package:moduchango/pages/stock_release_page/stock_release_page_components/stock_release_page_left_menu_bar.dart';

class StockShelfSelectPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StockReleasePageLeftMenuBar(),
        Expanded(
          child: Wrap(
            spacing: 10,
            children: List.generate(50, (index) => ShelfForm()),
          ),
        ),
      ],
    );
  }
}
