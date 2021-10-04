import 'package:flutter/material.dart';
import 'package:moduchango_app/size.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: xlarge_gap),
            SizedBox(height: xlarge_gap),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Get Started")),
          ],
        ),
      ),
    );
  }
}
