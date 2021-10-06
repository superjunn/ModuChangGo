import 'package:flutter/material.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/design_data/size.dart';

import 'storehouse_edit_components/storehouse_edit_page_body.dart';

class StoreHouseEditPage extends StatelessWidget {
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
              child: StoreHouseEditPageBody(),
            ),
          ),
          PageFooter(),
        ],
      ),
    );
  }
}
