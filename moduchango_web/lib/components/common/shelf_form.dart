import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/pages/storehouse/storehouse_contents_view_page.dart';
import 'package:moduchango/pages/storehouse/storehouse_shelves_view_page.dart';

class ShelfForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 266,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Get.to(() => StoreHouseContentsViewPage());
          },
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
                          SizedBox(width: 10),
                          _buildContentsinShelves(),
                          SizedBox(width: 10),
                          _buildContentsinShelves(),
                          SizedBox(width: 10),
                        ],
                      ),
                      TableRow(
                        children: [
                          _buildContentsinShelves(),
                          SizedBox(width: 10),
                          _buildContentsinShelves(),
                          SizedBox(width: 10),
                          _buildContentsinShelves(),
                          SizedBox(width: 10),
                        ],
                      ),
                      TableRow(
                        children: [
                          _buildContentsinShelves(),
                          SizedBox(width: 10),
                          _buildContentsinShelves(),
                          SizedBox(width: 10),
                          _buildContentsinShelves(),
                          SizedBox(width: 10),
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
        ),
      ),
    );
  }

  _buildContentsinShelves() {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
      ),
      child: Text("Contents"),
    );
  }
}
