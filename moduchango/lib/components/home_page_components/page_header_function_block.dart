import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/design_data/styles.dart';
import 'package:moduchango/pages/login_page.dart';

class PageHeaderFunctionBlock extends StatelessWidget {
  final mText;
  final funPageRoute;

  const PageHeaderFunctionBlock({
    required this.mText,
    this.funPageRoute,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: funPageRoute,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          "$mText",
          style: h3(),
        ),
      ),
    );
  }
}
