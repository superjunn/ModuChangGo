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
            SizedBox(height: large_gap),
            CustomForm(),
          ], // children
        ),
      ),
    );
  }
}
