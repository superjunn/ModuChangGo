import 'package:flutter/material.dart';
import 'package:moduchango/components/common/components_detail/page_left_menu_bar_function_block.dart';
import 'package:moduchango/design_data/size.dart';

class PageLeftMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: gap_l),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black12,
        ),
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: 180,
                  height: 3,
                  color: Colors.grey,
                ),
              ),
              PageLeftMenuBarFunctionBlock(mText: "Detail function 1"),
              PageLeftMenuBarFunctionBlock(mText: "Detail function 2"),
            ],
          ),
        ),
      ),
    );
  }
}
