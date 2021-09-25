import 'package:flutter/material.dart';
import 'package:moduchango/pages/home_page_components/home_page_body1.dart';
import 'package:moduchango/pages/home_page_components/home_page_body2.dart';
import 'package:moduchango/pages/home_page_components/home_page_body3.dart';
import 'package:moduchango/pages/home_page_components/home_page_body4.dart';
import 'package:moduchango/design_data/size.dart';

class HomePageBodys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getBodyWidth(context),
      child: Column(
        children: [
          HomePageBody1(),
          HomePageBody2(),
          HomePageBody3(),
          HomePageBody4(),
        ],
      ),
    );
  }
}
