import 'package:flutter/material.dart';
import '../../storehouse_page_components/storehouse_page_left_menu_bar.dart';

class ShelfInitSelectPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StoreHousePageLeftMenuBar(),
        Text("StoreHouse Init Page"),
      ],
    );
  }
}
