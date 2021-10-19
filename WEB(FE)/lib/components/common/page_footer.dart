import 'package:flutter/material.dart';
import 'package:moduchango/design_data/styles.dart';

class PageFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
      child: Column(
        children: [
          SizedBox(width: double.infinity, height: 50),
          SizedBox(
            height: 50,
            child: Row(
              children: [
                SizedBox(width: 50),
                SizedBox(
                  height: 50,
                  child: Image.asset("assets/osam_logo.png",
                      fit: BoxFit.fitHeight),
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  child:
                      Image.asset("assets/msi_logo.png", fit: BoxFit.fitHeight),
                ),
                SizedBox(width: 15),
                SizedBox(
                  height: 50,
                  child: Image.asset("assets/nipa_logo.png",
                      fit: BoxFit.fitHeight),
                ),
                SizedBox(width: 50),
              ],
            ),
          ),
          Row(
            children: [],
          ),
        ],
      ),
    );
  }
}
