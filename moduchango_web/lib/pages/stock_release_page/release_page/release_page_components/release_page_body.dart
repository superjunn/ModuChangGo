import 'package:flutter/material.dart';
import 'package:moduchango/components/common/storage_form.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/stock_release_page/stock_release_page_components/stock_release_page_left_menu_bar.dart';

class ReleasePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StockReleasePageLeftMenuBar(),
        Expanded(
          child: Wrap(
            spacing: 10,
            children: List.generate(50, (index) => StorageForm(edge_length: storage_edge_b)),
          ),
        ),
      ],
    );
  }
}
