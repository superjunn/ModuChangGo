import 'package:flutter/material.dart';
import 'package:moduchango_app/view/pages/page_drawer.dart';

class StorageDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: PageDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text("훈련용 창고"),
      ),
    );
  }
}
