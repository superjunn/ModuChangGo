// NestedScrollView Trying
import 'package:flutter/material.dart';
import 'package:moduchango/components/common/shelf_form.dart';
import 'package:moduchango/design_data/size.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Wrap(
        spacing: 10,
        children: List.generate(50, (index) => ShelfForm()),
      ),
    );
  }
}
