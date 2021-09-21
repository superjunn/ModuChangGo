import 'package:flutter/material.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/design_data/styles.dart';

class CustomTextFormField extends StatelessWidget {
  final titleText;
  final hintText;

  const CustomTextFormField({
    required this.titleText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$titleText",
          style: h2(),
        ),
        SizedBox(width: gap_m),
        Expanded(
          child: TextFormField(
            obscureText: hintText == "비밀번호를 입력하세요" ? true : false,
            decoration: InputDecoration(
              hintText: hintText,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
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
        ),
      ],
    );
  }
}
