import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango_app/controller/storage_controller.dart';
import 'package:moduchango_app/view/design/colors.dart';
import 'package:moduchango_app/view/pages/storage/storage_components/storage_form.dart';
import 'package:moduchango_app/view/pages/storage/storage_add_page.dart';

class StorageMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    StorageController s = Get.put(StorageController());
    return Obx(
      () => Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: kColor5,
          tooltip: "창고 추가",
          onPressed: () {
            Get.to(() => StorageAddPage());
          },
          child: Icon(Icons.add, color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
              s.storages.length,
              (index) => StorageForm(
                storage_name: "${s.storages[index].storageName}",
                storage_location: "${s.storages[index].location}",
                storage_image: "https://picsum.photos/240/120",
              ),
            ),
          ),
        ),
      ),
    );
  }
}