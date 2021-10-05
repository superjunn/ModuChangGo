import 'package:flutter/material.dart';
import 'package:moduchango/components/common/custom_text_form_field.dart';
import 'package:moduchango/components/common/page_left_menu_bar.dart';
// 플러터 데이트 피커, 피커 위젯 사용

class JoinPageBody extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _userID = TextEditingController();
  final _userName = TextEditingController();
  final _userRank = TextEditingController();
  final _userBranch = TextEditingController();
  final _userTroop = TextEditingController();
  final _phoneNumber = TextEditingController();
  final _enlistmentDate = TextEditingController();
  final _dischargementDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PageLeftMenuBar(),
        Expanded(
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
        ),
      ],
    );
  }
}
