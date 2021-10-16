import 'package:flutter/material.dart';
import 'package:moduchango_app/view/design/size.dart';
import 'package:moduchango_app/view/pages/components/page_drawer.dart';
import 'package:moduchango_app/view/pages/storage/storage_components/storage_detail_page_contents.dart';
import 'package:moduchango_app/view/pages/storage/storage_components/storage_detail_page_images.dart';

class StorageDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: PageDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text("훈련용 창고"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: medium_gap),
          StorageDetailPageImages(),
          SizedBox(height: medium_gap),
          StorageDetailPageContents(),
        ],
      ),
    );
  }
}
