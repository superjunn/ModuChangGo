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
            title: "Email",
            myValid: (value) {
              if (value!.isEmpty) {
                return "Please enter some text";
              } else if (!isEmail(value)) {
                return "Please enter valid Email form";
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: medium_gap,
          ),
          CustomTextFormField(
              title: "Password",
              myValid: (value) {
                if (value!.isEmpty) {
                  return "Please enter some text";
                } else if (!(4 < value.toString().length &&
                    value.toString().length < 12)) {
                  return "Please enter proper length of the password";
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
