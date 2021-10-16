import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_init/storage_init_page.dart';


class StorageInitForm extends StatelessWidget {
  final formWidth;

  const StorageInitForm({
    required this.formWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Get.to(() => StorageInitPage());
        },
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 5,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12,
            ),
            width: formWidth,
            height: 185,
            child: Center(child: Icon(Icons.add)),
          ),
        ),
      ),
    );
  }
}

