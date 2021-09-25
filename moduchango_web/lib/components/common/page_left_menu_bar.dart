import 'package:flutter/material.dart';
import 'package:moduchango/design_data/size.dart';

class PageLeftMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: gap_l),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        height: 500,
      ),
    );
  }
}
