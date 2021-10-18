import 'package:flutter/material.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/design_data/styles.dart';

class CustomTextFormField extends StatelessWidget {
  final titleText;
  final hintText;
  final double width;
  final controller;

  const CustomTextFormField({
    required this.titleText,
    required this.hintText,
    required this.width,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_xs),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              "$titleText",
              style: h3(isBold: false),
            ),
          ),
          SizedBox(width: gap_m),
          SizedBox(
            width: width,
            child: TextFormField(
              controller: controller,
              style: TextStyle(fontSize: 14, height: 1.5),
              obscureText: hintText == "비밀번호를 입력하세요" ? true : false,
              decoration: InputDecoration(
                hintText: hintText,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
