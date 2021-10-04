import 'package:flutter/material.dart';
import 'package:moduchango_app/size.dart';
import 'package:moduchango_app/view/components/custom_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: xlarge_gap),
            Container(
              alignment: Alignment.center,
              height: 250,
              child: Column(
                children: [
                  Icon(Icons.home, size: 150),
                  Text(
                    "모두의 창고",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\" 병영창고 관리의 혁신 \"",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            CustomForm(),
          ], // children
        ),
      ),
    );
  }
}
