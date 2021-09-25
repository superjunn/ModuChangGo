import 'package:flutter/material.dart';
import 'package:moduchango/components/common/page_left_menu_bar.dart';

class StoreHousePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
              ),
            ],
          ),
        )
      ],
    );
  }
}

