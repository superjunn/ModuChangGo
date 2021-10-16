// NestedScrollView Trying
import 'package:flutter/material.dart';
import 'package:moduchango/components/common/contents_tile.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_page_components/storehouse_page_left_menu_bar.dart';


class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    double currentSize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          PageHeader(),
          Align(
            child: SizedBox(
              width: currentSize < 340 ? double.infinity : bodyWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StoreHousePageLeftMenuBar(),
                  Expanded(
                    child: Wrap(
                      spacing: 10,
                      children: List.generate(
                          3,
                          (index) => ContentsTile(
                                contentsName: "방상외피",
                                Storage: "훈련용창고",
                                Shelf: "3",
                                rfidInfo: "띠바",
                                cnt: 12,
                                Col: "1",
                                Row: "2",
                              )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PageFooter(),
        ],
      ),
    );
  }
}
