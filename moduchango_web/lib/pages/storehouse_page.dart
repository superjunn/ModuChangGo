import 'package:flutter/material.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/storehouse_page_components/storehouse_page_body.dart';

class StoreHousePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          PageHeader(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: gap_padding),
            child: StoreHousePageBody(),
          ),
          PageFooter(),
        ],
      ),
    );
  }
}
