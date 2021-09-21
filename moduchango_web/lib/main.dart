import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/pages/home_page.dart';
import 'package:moduchango/pages/join_page.dart';

import 'package:moduchango/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "NotoSans"),
      home: JoinPage(),
    );
  }
}
