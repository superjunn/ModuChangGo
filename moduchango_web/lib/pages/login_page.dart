import 'dart:js';

import 'package:flutter/material.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/pages/login_page_components/login_page_body.dart';
import 'package:moduchango/design_data/size.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    double currenSize = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          PageHeader(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: gap_padding),
            child: LoginPageBody(),
          ),
          PageFooter(),
        ],
      ),
    );
  }
}
