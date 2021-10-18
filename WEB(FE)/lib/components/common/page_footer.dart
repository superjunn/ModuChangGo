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
      child: Row(
        children: [
          Image.asset("assets/MND_logo.jpg", height: 200, width: 500),
          Image.asset("assets/osam_logo.png", height: 200, width: 500),
          Icon(Icons.zoom_in_sharp),
          Column(
            children: [
              Text("Moduchango", style: hbody()),
              Text("김태한", style: hbody()),
              Text("박규한", style: hbody()),
              Text("조명근", style: hbody()),
              Text("허승준", style: hbody()),
            ],
          ),
        ],
      ),
    );
  }
}
