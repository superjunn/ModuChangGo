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
                CustomTextFormField(titleText: "아이디", hintText: "아이디를 입력해주세요"),
                CustomTextFormField(titleText: "성명", hintText: "성명을 입력해주세요"),
                CustomTextFormField(
                    titleText: "계급", hintText: "계급(이등병, 일등병, 상등병, 병장)을 입력해주세요"),
                CustomTextFormField(titleText: "병과", hintText: "병과를 입력해주세요"),
                CustomTextFormField(
                    titleText: "소속부대", hintText: "소속부대를 중대급으로 입력해주세요"),
                CustomTextFormField(
                    titleText: "군 일반전화", hintText: "중대 행정반 전화번호를 입력해주세요"),
                CustomTextFormField(titleText: "입대일", hintText: "입대일을 입력해주세요"),
                CustomTextFormField(titleText: "전역일", hintText: "전역일을 입력해주세요"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
