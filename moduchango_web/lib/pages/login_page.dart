import 'package:flutter/material.dart';
import 'package:moduchango/components/common/custom_text_form_field.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/components/login_page_components/login_page_body.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PageHeader(),
          Text("LoginPage"),
          // LoginPageBody(),
          // PageFooter(),
        ],
      ),
    );
  }
}
