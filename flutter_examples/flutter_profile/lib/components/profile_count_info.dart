import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildInfo("50", "Posts"),
        _buildLine(),
        _buildInfo("10", "Likes"),
        _buildLine(),
        _buildInfo("3", "Share"),
      ],
    );
  }
}

Widget _buildInfo(String count, String title) {
  return Column(
    children: [
      Text(
        count,
        style: TextStyle(fontSize: 18, fontFamily: "PatuaOne"),
      ),
      SizedBox(height: 2),
      Text(
        title,
        style: TextStyle(fontSize: 18, fontFamily: "PatuaOne"),
      ),
    ],
  );
}

Widget _buildLine() {
  return Container(
    color: Colors.blue,
    width: 2,
    height: 60,
  );
}
