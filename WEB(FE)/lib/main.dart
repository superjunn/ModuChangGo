import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/pages/login_page/login_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_view/storehouse_contents_detail_view_page.dart';

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
      home: StoreHouseContentsDetailViewPage(storageName: "운영창고"),
    );
  }
}
