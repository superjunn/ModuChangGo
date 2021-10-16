import 'package:flutter/material.dart';

TextStyle h1({Color mColor = Colors.black, bool isBold = true}) {
  if (isBold) {
    return TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: mColor);
  } else {
    return TextStyle(fontSize: 36, color: mColor);
  }
}

TextStyle h2({Color mColor = Colors.black, bool isBold = true}) {
  if (isBold) {
    return TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: mColor);
  } else {
    return TextStyle(fontSize: 18, color: mColor);
  }
}

TextStyle h2_5({Color mColor = Colors.black, bool isBold = true}) {
  if (isBold) {
    return TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: mColor);
  } else {
    return TextStyle(fontSize: 16, color: mColor);
  }
}

TextStyle h3({Color mColor = Colors.black, bool isBold = true}) {
  if (isBold) {
    return TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: mColor);
  } else {
    return TextStyle(fontSize: 14, color: mColor);
  }
}

TextStyle h4({Color mColor = Colors.black, bool isBold = true}) {
  if (isBold) {
    return TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: mColor);
  } else {
    return TextStyle(fontSize: 12, color: mColor);
  }
}

TextStyle h5({Color mColor = Colors.black, bool isBold = true}) {
  if (isBold) {
    return TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: mColor);
  } else {
    return TextStyle(fontSize: 10, color: mColor);
  }
}

TextStyle hbody({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 16, color: mColor);
}

TextStyle hsubtitle2({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle hsubtitle3({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 12, color: mColor);
}

// Follow without understanding exactly what it is
TextStyle overLine({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle body1({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 16, color: mColor);
}
