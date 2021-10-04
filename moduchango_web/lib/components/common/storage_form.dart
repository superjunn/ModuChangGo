import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/storage_image.dart';
import 'package:moduchango/design_data/styles.dart';
import 'package:moduchango/pages/storehouse/storehouse_shelves_view_page.dart';

class StorageForm extends StatelessWidget {
  final edge_length;

  const StorageForm({required this.edge_length});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Get.to(() => StoreHouseShelfPage());
          },
          child: Material(
            elevation: 5,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white70,
                ),
                width: edge_length,
                height: edge_length,
                child: Column(
                  children: [
                    StorageImage(),
                    Text("훈련용 창고", style: hbody()),
                    Text("선반 개수 : 5개", style: hbody()),
                    Text("전투연병장 뒤쪽", style: hbody()),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
