import 'package:flutter/material.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/design_data/styles.dart';

class HomePageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      width: double.infinity,
      height: header_height,
      child: Align(
        alignment: Alignment(-0.4, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 350),
            Text(
              "병영창고 정리의 혁신",
              style: h1(),
            ),
            Text(
              "모두의 창고를 통해 남은 군 생활, 고냥 개꿀 빨다가 전역하세욘",
              style: h2(),
            ),
          ],
        ),
      ),
    );
  }
}
