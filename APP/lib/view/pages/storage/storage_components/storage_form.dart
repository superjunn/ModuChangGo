import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango_app/controller/storage_controller.dart';
import 'package:moduchango_app/view/design/size.dart';
import 'package:moduchango_app/view/pages/storage/storage_components/storage_image.dart';
import 'package:moduchango_app/view/pages/storage/storage_detail_page.dart';

class StorageForm extends StatelessWidget {
  final int storage_index;
  final String storage_name;
  final String storage_location;
  final String storage_image;

  const StorageForm({
    required this.storage_index,
    required this.storage_name,
    required this.storage_location,
    required this.storage_image,
  });

  @override
  Widget build(BuildContext context) {
    StorageController s = Get.put(StorageController());
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          onTap: () {
            s.findByName(s.storages[this.storage_index].storageName!);
            Get.to(() => StorageDetailPage(
                  storage_name: this.storage_name,
                  storage_index: this.storage_index,
                ));
          },
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 5,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white70,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StorageImage(
                      image_link: storage_image,
                      storage_name: storage_name,
                    ),
                    SizedBox(height: small_gap),
                    Text(
                      "  이름: " + storage_name,
                      // style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    Text(
                      "  위치: " + storage_location,
                      // style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    SizedBox(height: small_gap),
                    SizedBox(
                      height: 30,
                      child: Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: Text("수정"),
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  alignment: Alignment.center),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () async {
                                await s.deleteByName(this.storage_name);
                              },
                              child: Text("삭제"),
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  alignment: Alignment.center),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
