import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeHeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  _buildAppBarLogo() {
    return Row(
      children: [
        Image.asset(
          "assets/logo.png",
          width: 30,
          height: 30,
          color: kAccentColor,
        ),
        SizedBox(
          width: gap_s,
        ),
        Text(
          "airbnb",
          style: h5(mColor: Colors.white),
        ),
      ],
    );
  }

  _buildAppBarMenu() {
    return Row(
      children: [
        Text("Sign in", style: hsubtitle1(mColor: Colors.white)),
        SizedBox(width: gap_m),
        Container(
          width: 1,
          height: 20,
          color: Colors.white,
        ),
        SizedBox(width: gap_m),
        Text("Log in", style: hsubtitle1(mColor: Colors.white)),
      ],
    );
  }
}
