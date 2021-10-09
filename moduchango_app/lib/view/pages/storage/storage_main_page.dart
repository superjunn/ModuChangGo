import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango_app/view/design/colors.dart';
import 'package:moduchango_app/view/pages/components/storage_form.dart';
import 'package:moduchango_app/view/pages/stock_release_history/stock_release_history.dart';

class StorageMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) => StorageForm()),
      ),
    );
  }
}
