import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

import '../size.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final myValid;

  const CustomTextFormField({required this.title, required this.myValid});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        SizedBox(height: small_gap),
        TextFormField(
          // validator: (value) => value!.isEmpty ? "Please enter some text" : null
          // 값이 없으면 Please enter some text 경고 화면 표시
          validator: myValid, // Bonus way to provide validator
          obscureText: title == "Password" ? true : false,
          decoration: InputDecoration(
            hintText: "Enter $title",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ], //children
    );
  }
}
