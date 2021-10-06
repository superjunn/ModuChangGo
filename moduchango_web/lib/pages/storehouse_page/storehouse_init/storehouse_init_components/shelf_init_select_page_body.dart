import 'package:flutter/material.dart';
import 'package:moduchango/components/common/shelf_form.dart';
import '../../storehouse_page_components/storehouse_page_left_menu_bar.dart';

class ShelfInitSelectPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StoreHousePageLeftMenuBar(),
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
