import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
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
              Expanded(
                child: Column(
                  children: [
                    Text("Column"),
                    TextFormField(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
