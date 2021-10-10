import 'package:flutter/material.dart';
import 'package:moduchango/components/common/storage_form.dart';
import 'package:moduchango/components/common/storage_init_form_.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/design_data/styles.dart';

class HomePageStoreHouse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("창고 보기", style: h2_5()),
              ],
            ),
            SizedBox(height: gap_s),
            Wrap(
              children: List.generate(
                7,
                (index) {
                  if (index != 6) {
                    return StorageForm(formWidth: storage_edge_s);
                  } else {
                    return StorageInitForm(formWidth: storage_edge_s);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
