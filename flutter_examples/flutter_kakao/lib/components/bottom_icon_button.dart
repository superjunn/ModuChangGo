import 'package:flutter/material.dart';

class BottomIconButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const BottomIconButton({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("\"${text}\" button is clicked");
      },
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 25),
          SizedBox(height: 10),
          Text(text, style: TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }
}
