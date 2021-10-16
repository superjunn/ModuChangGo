import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildMenuItem(Icons.food_bank, "ALL"),
            SizedBox(width: 12),
            _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
            SizedBox(width: 12),
            _buildMenuItem(Icons.fastfood, "Burger"),
            SizedBox(width: 12),
            _buildMenuItem(Icons.local_pizza, "Pizza"),
          ],
        ),
      ),
    );
  }

  Container _buildMenuItem(IconData mIcon, String text) {
    return Container(
      height: 80,
      width: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black26,
        ),
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(height: 10.0),
          Icon(
            mIcon,
            size: 30,
            color: Colors.redAccent,
          ),
          SizedBox(height: 7.5),
          Text(text),
        ],
      ),
    );
  }
}
