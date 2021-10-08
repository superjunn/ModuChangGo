import 'package:flutter/material.dart';
import 'package:moduchango/components/common/storage_form.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/history_page/history_page_components/history_page_left_menu_bar.dart';

class HistoryByStorageSelectPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HistoryPageLeftMenuBar(),
        Expanded(
          child: Wrap(
            spacing: 10,
            children: List.generate(50, (index) => StorageForm(edge_length: storage_edge_b, stat: Status.history)),
          ),
        ),
      ],
    );
  }
}
