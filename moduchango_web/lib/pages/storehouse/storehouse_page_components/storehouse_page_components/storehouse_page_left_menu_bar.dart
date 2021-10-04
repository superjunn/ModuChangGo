import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/components_detail/page_left_menu_bar_function_block.dart';
import 'package:moduchango/design_data/size.dart';

import '../../storehouse_delete_page.dart';
import '../../storehouse_edit_page.dart';
import '../../storehouse_init_page.dart';
import '../../storehouse_page.dart';


class StoreHousePageLeftMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: gap_l),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.yellow,
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
              PageLeftMenuBarFunctionBlock(
                mText: "창고 보기",
                funPageRoute: () {
                  Get.to(() => StoreHousePage());
                },
              ),
              PageLeftMenuBarFunctionBlock(
                mText: "창고 만들기",
                funPageRoute: () {
                  Get.to(() => StoreHouseInitPage());
                },
              ),
              PageLeftMenuBarFunctionBlock(
                mText: "창고 수정",
                funPageRoute: () {
                  Get.to(() => StoreHouseEditPage());
                },
              ),
              PageLeftMenuBarFunctionBlock(
                mText: "창고 삭제",
                funPageRoute: () {
                  Get.to(() => StoreHouseDeletePage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
