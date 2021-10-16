import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final controller;
  final validator;

  const CustomTextFormField({this.controller, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedErrorBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        errorBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      controller: controller,
      validator: validator,
    );
  }
}
