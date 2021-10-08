import 'dart:html';
// Complete Using GridView
import 'package:flutter/material.dart';
import 'package:moduchango/components/common/page_left_menu_bar.dart';
import 'package:moduchango/design_data/size.dart';

class TestPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: gap_padding),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  PageLeftMenuBar(),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 4,
                            children: List.generate(16, (index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.red,
                                  child: Text("Hello $index"),
                                ),
                              );
                            }),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
