import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango_app/view/components/custom_text_form_field.dart';
import 'package:moduchango_app/view/design/size.dart';
import 'package:moduchango_app/view/pages/home_page.dart';
import 'package:moduchango_app/view/pages/join_page.dart';
import 'package:validators/validators.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            title: "관리자 ID",
            myValid: (value) {
              if (value!.isEmpty) {
                return "관리자 ID를 입력하세요.";
              } else if (!isAlphanumeric(value)) {
                return "ID는 영어와 숫자로만 이루어집니다.";
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: medium_gap,
          ),
          CustomTextFormField(
              title: "비밀번호",
              myValid: (value) {
                if (value!.isEmpty) {
                  return "비밀번호를 입력하세요.";
                } else if (!(3 < value.toString().length &&
                    value.toString().length < 13)) {
                  return "비밀번호는 4자 이상 12자 이하입니다.";
                } else {
                  return null;
                }
              }),
          SizedBox(height: small_gap),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              minimumSize: Size(80, 40),
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Get.to(() => HomePage());
              }
            },
            child: Text("Login"),
          ),
          TextButton(
            style: TextButton.styleFrom(
              // padding: EdgeInsets.zero,
              primary: Colors.black,
            ),
            onPressed: () {
              Get.to(() => JoinPage());
            },
            child: Text(
              "아직 회원가입을 하지 않으셨나요?",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }
}
