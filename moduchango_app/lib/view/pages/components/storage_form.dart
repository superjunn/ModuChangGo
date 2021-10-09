import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango_app/view/design/size.dart';
import 'package:moduchango_app/view/pages/components/storage_image.dart';
import 'package:moduchango_app/view/pages/storage/storage_detail_page.dart';

class StorageForm extends StatelessWidget {
  // final edge_length;
  // const StorageForm({required this.edge_length});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StorageImage(),
                    SizedBox(height: small_gap),
                    Text("  이름: 훈련용 창고"),
                    Text("  위치: 전투연병장 뒤쪽"),
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
                              onPressed: () {},
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
