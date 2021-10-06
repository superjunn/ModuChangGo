import 'package:flutter/material.dart';
import '../../storehouse_page_components/storehouse_page_left_menu_bar.dart';

class StoreHouseEditPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StoreHousePageLeftMenuBar(),
        Text("StoreHouse Edit Page"),
      ],
    );
  }
}
