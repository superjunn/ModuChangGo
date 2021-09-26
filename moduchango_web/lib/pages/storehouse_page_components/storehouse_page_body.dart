import 'package:flutter/material.dart';
import 'package:moduchango/components/common/page_left_menu_bar.dart';
import 'package:moduchango/components/common/storage.dart';

class StoreHousePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PageLeftMenuBar(),
        Expanded(
          child: Wrap(
            spacing: 10,
            children: List.generate(50, (index) => Storage()),
          ),
        ),
      ],
    );
  }
}
