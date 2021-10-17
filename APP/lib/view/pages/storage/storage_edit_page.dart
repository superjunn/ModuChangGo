import 'package:flutter/material.dart';
import 'package:moduchango_app/view/pages/components/page_drawer.dart';
import 'package:moduchango_app/view/pages/storage/storage_components/custom_edit_form.dart';
import 'package:moduchango_app/view/pages/storage/storage_components/custom_edit_text_form_field.dart';
import 'package:validators/validators.dart';

class StorageEditPage extends StatelessWidget {
  final String storage_name;
  final String storage_location;
  final int storage_index;

  const StorageEditPage({
    required this.storage_name,
    required this.storage_location,
    required this.storage_index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: PageDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(this.storage_name + " 수정"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: CustomEditForm(storage_index: this.storage_index),
    );
  }
}
