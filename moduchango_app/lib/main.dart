import 'package:flutter/material.dart';
import 'package:moduchango_app/view/pages/post/home_page.dart';
import 'package:moduchango_app/view/pages/user/login_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //경로 설정 필요없음
      home: LoginPage(),
    );
  }
}
