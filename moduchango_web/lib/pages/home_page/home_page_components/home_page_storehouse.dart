import 'package:flutter/material.dart';
import 'package:moduchango/components/common/storage_form.dart';
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
                Text("창고 보기", style: h3()),
              ],
            ),
            SizedBox(height: gap_s),
            Container(
              margin: EdgeInsets.symmetric(vertical: 1.0),
              height: storage_edge_s,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  StorageForm(formWidth: storage_edge_b, formHeight: storage_edge_b,),
                  StorageForm(formWidth: storage_edge_b, formHeight: storage_edge_b,),
                  StorageForm(formWidth: storage_edge_b, formHeight: storage_edge_b,),
                  StorageForm(formWidth: storage_edge_b, formHeight: storage_edge_b,),
                  StorageForm(formWidth: storage_edge_b, formHeight: storage_edge_b,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
