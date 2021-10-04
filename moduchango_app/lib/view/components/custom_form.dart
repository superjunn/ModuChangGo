import 'package:flutter/material.dart';
import 'package:moduchango_app/size.dart';
import 'package:moduchango_app/view/components/custom_text_form_field.dart';
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
            height: small_gap,
          ),
          CustomTextFormField(
              title: "비밀번호",
              myValid: (value) {
                if (value!.isEmpty) {
                  return "비밀번호를 입력하세요.";
                } else if (!(4 < value.toString().length &&
                    value.toString().length < 12)) {
                  return "비밀번호는 4자 이상 12자 이하입니다.";
                } else {
                  return null;
                }
              }),
          SizedBox(height: large_gap),
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
