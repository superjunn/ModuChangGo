import 'package:flutter/material.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/pages/home_page_components/home_page_header.dart';

import 'home_page_components/home_page_bodys.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          PageHeader(),
          Column(
            children: [
              HomePageHeader(),
              HomePageBodys(),
              PageFooter(),
            ],
          ),
        ],
      ),
    );
  }
}
