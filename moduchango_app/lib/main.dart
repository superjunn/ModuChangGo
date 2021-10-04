import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/pages/home_page.dart';
import 'view/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: ThemeData(
      //   textButtonTheme: TextButtonThemeData(
      //     style: TextButton.styleFrom(
      //         backgroundColor: Colors.black,
      //         primary: Colors.white,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(30),
      //         ),
      //         minimumSize: Size(100, 50)),
      //   ),
      // ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
