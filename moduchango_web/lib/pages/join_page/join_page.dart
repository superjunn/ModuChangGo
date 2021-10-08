import 'package:flutter/material.dart';
import 'package:moduchango/components/common/custom_elevated_button.dart';
import 'package:moduchango/components/common/custom_outlined_button.dart';
import 'package:moduchango/components/common/custom_text_form_field.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/design_data/size.dart';

class JoinPage extends StatelessWidget {
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
              child: _buildJoinPageBody(),
            ),
          ),
          PageFooter(),
        ],
      ),
    );
  }

  _buildJoinPageBody() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextFormField(
              titleText: "아이디", hintText: "아이디를 입력해주세요", width: 340),
          CustomTextFormField(
              titleText: "비밀번호", hintText: "비밀번호를 입력해주세요", width: 340),
          CustomTextFormField(
              titleText: "부대", hintText: "부대를 입력해주세요", width: 340),
          CustomElevatedButton(buttonText: "로그인", stat: StatusEB.login, width: 460),
          CustomOutlinedButton(buttonText: "회원가입", stat: StatusOB.join, width: 460),
        ],
      ),
    );
  }
}
