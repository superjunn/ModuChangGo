import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/controller/storage_controller.dart';

import 'home_page_components/home_page_bodys.dart';
import 'home_page_components/home_page_header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    StorageController s = Get.put(StorageController());
    s.findAll();

    return Scaffold(
      body: ListView(
        children: [
          PageHeader(),
          Column(
            children: [
              HomePageHeader(),
              HomePageBodys(),
              PageFooter(),
            ],
          ),
        ],
      ),
    );
  }
}
