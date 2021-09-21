import 'package:flutter/material.dart';
import 'package:moduchango/components/common/custom_text_form_field.dart';

class LoginPageForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // CustomTextFormField(titleText: "아이디", hintText: "아이디를 입력하세요"),
        CustomTextFormField(titleText: "비밀번호", hintText: "비밀번호를 입력하세요"),
      ],
    );
  }
}
