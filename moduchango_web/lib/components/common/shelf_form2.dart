import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_view/storehouse_contents_detail_view_page.dart';

class ShelfForm2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      child: Material(
        elevation: 5,
        child: Column(
          children: [
            Container(
              child: Table(
                children: [
                  TableRow(
                    children: [
                      _buildContentsinShelves(),
                      _buildContentsinShelves(),
                      _buildContentsinShelves(),
                    ],
                  ),
                  TableRow(
                    children: [
                      _buildContentsinShelves(),
                      _buildContentsinShelves(),
                      _buildContentsinShelves(),
                    ],
                  ),
                  TableRow(
                    children: [
                      _buildContentsinShelves(),
                      _buildContentsinShelves(),
                      _buildContentsinShelves(),
                    ],
                  ),
                ],
              ),
            ),
            Text("훈련용창고_선반1"),
            Text("방한두건, 방상외피, ..."),
          ],
        ),
      ),
    );
  }

  _buildContentsinShelves() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Get.to(() => StoreHouseContentsDetailViewPage());
        },
        child: Container(
          height: 217.333,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
          ),
          child: Text("방상외피"),
        ),
      ),
    );
  }
}
