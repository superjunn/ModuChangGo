import 'package:flutter/material.dart';
import 'package:moduchango/components/common/custom_text_form_field.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/design_data/size.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _userID = TextEditingController();
  final _userPwd = TextEditingController();
  final _unitName = TextEditingController();

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
              child: _buildLoginPageBody(),
            ),
          ),
          PageFooter(),
        ],
      ),
    );
  }

  _buildLoginPageBody() {
    return Expanded(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFormField(
                titleText: "아이디", hintText: "아이디를 입력해주세요", width: 340),
            CustomTextFormField(
                titleText: "비밀번호", hintText: "비밀번호를 입력해주세요", width: 340),
            CustomTextFormField(
                titleText: "부대", hintText: "부대를 입력해주세요", width: 340),
          ],
        ),
      ),
    );
  }
}
