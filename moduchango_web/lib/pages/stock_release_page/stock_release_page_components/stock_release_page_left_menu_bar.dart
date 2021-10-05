import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/components_detail/page_left_menu_bar_function_block.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/stock_release_page/stock_release_history_page.dart';
import 'package:moduchango/pages/stock_release_page/stock_release_release_page.dart';
import 'package:moduchango/pages/stock_release_page/stock_release_stock_page.dart';


class StockReleasePageLeftMenuBar extends StatelessWidget {
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
                mText: "입고하기",
                funPageRoute: () {
                  Get.to(() => StockReleaseStockPage());
                },
              ),
              PageLeftMenuBarFunctionBlock(
                mText: "출고하기",
                funPageRoute: () {
                  Get.to(() => StockReleaseReleasePage());
                },
              ),
              PageLeftMenuBarFunctionBlock(
                mText: "입/출고 내역 보기",
                funPageRoute: () {
                  Get.to(() => StockReleaseHistoryPage());
                },
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
