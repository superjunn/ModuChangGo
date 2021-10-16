import 'package:flutter/material.dart';

// Primary color : Brand color of the App
// Secondary color a.k.a accent color

ThemeData theme() {
  return ThemeData(
    primaryColor: Colors.white, // Brand color of this App
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue),
    ),
  );
}
