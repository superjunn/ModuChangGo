import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango_app/view/pages/components/storage_image.dart';
import 'package:moduchango_app/view/pages/storage/storage_detail_page.dart';

class StorageForm extends StatelessWidget {
  final edge_length;

  const StorageForm({required this.edge_length});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: InkWell(
          onTap: () {
            Get.to(() => StorageDetailPage());
          },
          child: Material(
            borderRadius: BorderRadius.circular(10),
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
                    Text("훈련용 창고"),
                    Text("선반 개수 : 5개"),
                    Text("전투연병장 뒤쪽"),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
