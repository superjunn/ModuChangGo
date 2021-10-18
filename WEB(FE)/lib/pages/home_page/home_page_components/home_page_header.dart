import 'package:flutter/material.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/design_data/styles.dart';

class HomePageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/banner.jpg"),
          fit: BoxFit.fitHeight,
        ),
      ),
      width: double.infinity,
      height: header_height,
      child: Align(
        alignment: Alignment(-0.4, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 350),
            // Text(
            //   "병영창고 정리의 혁신",
            //   style: h1(),
            // ),
            // Text(
            //   "모두의 창고를 통해 부대 병영창고 정리의 혁신을 느껴보세요",
            //   style: h2(),
            // ),
          ],
        ),
      ),
    );
  }
}
