import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/storage_image.dart';
import 'package:moduchango/design_data/styles.dart';
import 'package:moduchango/pages/storehouse/storehouse_shelf_page.dart';

class ShelfForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Get.to(() => StoreHouseShelfPage());
          },
          child: Material(
            elevation: 5,
            child: Container(
              width: 300,
              height: 300,
              child: Table(
                children: [
                  TableRow(
                    children: [
                      Text("1", style: TextStyle(fontSize: 10.0)),
                      Text("Ajay", style: TextStyle(fontSize: 10.0)),
                      Text("80", style: TextStyle(fontSize: 10.0)),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text("2", style: TextStyle(fontSize: 10.0)),
                      Text("Aniket", style: TextStyle(fontSize: 10.0)),
                      Text("88", style: TextStyle(fontSize: 10.0)),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text("3", style: TextStyle(fontSize: 10.0)),
                      Text("Anurag", style: TextStyle(fontSize: 10.0)),
                      Text("50", style: TextStyle(fontSize: 10.0)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
