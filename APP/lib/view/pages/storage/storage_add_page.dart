import 'package:flutter/material.dart';
import 'package:moduchango_app/view/pages/components/page_drawer.dart';
import 'package:moduchango_app/view/pages/storage/storage_components/custom_add_form.dart';

class StorageAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: PageDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text("창고 추가"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: CustomAddForm(),
    );
  }
}
