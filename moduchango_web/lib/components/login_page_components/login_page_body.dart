import 'package:flutter/material.dart';
import 'package:moduchango/components/common/custom_text_form_field.dart';
import 'package:moduchango/components/common/page_left_menu_bar.dart';
import 'package:moduchango/components/login_page_components/login_page_form.dart';

class LoginPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PageLeftMenuBar(),
        CustomTextFormField(titleText: "he", hintText: "ee"),
      ],
    );
  }
}
