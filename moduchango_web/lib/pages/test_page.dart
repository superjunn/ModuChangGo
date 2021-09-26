// NestedScrollView Trying
import 'package:flutter/material.dart';
import 'package:moduchango/components/common/storage.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        spacing: 10,
        children: List.generate(50, (index) => Storage()),
      ),
    );
  }
}
