import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/custom_elevated_button.dart';
import 'package:moduchango/components/common/custom_text_form_field.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/controller/storage_controller.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_page_components/storehouse_page_left_menu_bar.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_view/storehouse_my_storages_view_page.dart';

class StorageEditPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final String? storageName;
  final String? location;
  final int? image;
  final _storageName = TextEditingController();
  final _location = TextEditingController();
  final _image = TextEditingController();

  StorageEditPage({this.storageName, this.location, this.image});

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    double currentSize = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          PageHeader(),
          Align(
            child: SizedBox(
              width: currentSize < 340 ? double.infinity : bodyWidth,
              child: _buildBody(),
            ),
          ),
          PageFooter(),
        ],
      ),
    );
  }

  _buildBody() {
    StorageController s = Get.put(StorageController());
    s.findByName(storageName!);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StoreHousePageLeftMenuBar(),
        Expanded(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Container(
                width: 400,
                height: 500,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextFormField(
                          titleText: "창고 이름",
                          hintText: "$storageName",
                          width: 340),
                      CustomTextFormField(
                          titleText: "창고 위치",
                          hintText: "$location",
                          width: 340),
                      CustomTextFormField(
                          titleText: "창고 이미지", hintText: "$image", width: 340),
                      CustomElevatedButton(
                        buttonText: "창고 수정하기",
                        width: 540,
                        funpageRoute: () async {
                          Get.off(() => StoreHouseMyStoragesViewPage());
                          await Get.find<StorageController>().init(
                            storageName: _storageName.text,
                            location: _location.text,
                            image: int.parse(_image.text),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
