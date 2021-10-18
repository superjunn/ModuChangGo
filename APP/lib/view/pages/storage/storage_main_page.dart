import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango_app/controller/storage_controller.dart';
import 'package:moduchango_app/view/design/colors.dart';
import 'package:moduchango_app/view/pages/storage/storage_components/storage_form.dart';
import 'package:moduchango_app/view/pages/storage/storage_add_page.dart';

class StorageMainPage extends StatelessWidget {
  var refreshKey = GlobalKey<RefreshIndicatorState>();
  @override
  Widget build(BuildContext context) {
    List<String> selectedPic = [
      "assets/chango1.jpg",
      "assets/chango2.jpg",
      "assets/chango3.jpg",
      "assets/chango4.jpg",
      "assets/chango5.jpg",
      "assets/chango6.jpg",
      "assets/chango7.jpg",
      "assets/chango8.jpg",
    ];

    StorageController s = Get.put(StorageController());

    return Obx(
      () => RefreshIndicator(
        key: refreshKey,
        onRefresh: () async {
          await s.findAll();
        },
        child: Scaffold(
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
                  storage_index: index,
                  storage_name: "${s.storages[index].storageName}",
                  storage_location: "${s.storages[index].location}",
                  storage_image: selectedPic[index % 8],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
