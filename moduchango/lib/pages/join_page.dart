import 'package:flutter/material.dart';
import 'package:moduchango/components/common/custom_text_form_field.dart';

class JoinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CustomTextFormField(titleText: "hello", hintText: "hello??"),
      ),
    );
  }
}
