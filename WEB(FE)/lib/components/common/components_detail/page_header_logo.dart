import 'package:flutter/material.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/design_data/styles.dart';

class PageHeaderLogo extends StatelessWidget {
  final funPageRoute;

  const PageHeaderLogo({
    this.funPageRoute,
  });

  @override
  Widget build(BuildContext context) {
    final monitorWidth = getMonitorWidth(context);

    return InkWell(
      onTap: funPageRoute,
      child: Row(
        children: [
          SizedBox(width: monitorWidth * 0.01),
          SizedBox(
            width: 40,
            height: 40,
            child: Image.asset("assets/logo.png"),
          ),
          SizedBox(
            width: gap_xs,
          ),
          Text(
            "ModuChango",
            style: h2(),
          ),
        ],
      ),
    );
  }
}
