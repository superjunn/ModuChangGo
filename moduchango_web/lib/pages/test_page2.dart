import 'package:flutter/material.dart';

class TestPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("TestPage, jom..."),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Column(
                children: [
                  Text("Column"),
                  Container(
                    width: 100,
                    height: 150,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
