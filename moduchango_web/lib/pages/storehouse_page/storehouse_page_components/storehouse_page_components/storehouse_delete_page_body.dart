import 'package:flutter/material.dart';
import 'storehouse_page_left_menu_bar.dart';

class StoreHouseDeletePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StoreHousePageLeftMenuBar(),
        Text("StoreHouse Delete Page"),
      ],
    );
  }
}
