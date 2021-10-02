import 'package:flutter/material.dart';

const kColor1 = Color(0xff33691e);
const kColor2 = Color(0xff827717);
const kColor3 = Color(0xff765548);
const kColor4 = Color(0xfff81919);

TextStyle h4({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle h5({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle k_subtitle1({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle k_subtitle2({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: mColor);
}

// Follow without understanding exactly what it is
TextStyle overLine({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle body1({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 16, color: mColor);
}
