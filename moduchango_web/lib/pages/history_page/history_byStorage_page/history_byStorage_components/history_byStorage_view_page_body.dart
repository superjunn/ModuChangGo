import 'package:flutter/material.dart';
import 'package:moduchango/pages/history_page/history_page_components/history_page_left_menu_bar.dart';

class HistoryByStorageViewPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HistoryPageLeftMenuBar(),
        Text("History by storage view page body")
      ],
    );
  }
}
