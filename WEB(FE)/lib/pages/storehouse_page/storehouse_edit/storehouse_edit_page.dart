import 'package:flutter/material.dart';
import 'package:moduchango/components/common/custom_text_form_field.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_page_components/storehouse_page_left_menu_bar.dart';

class StorageEditPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final String? storageName;

  StorageEditPage({this.storageName});

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
                          titleText: "창고 이름", hintText: "훈련용 창고", width: 340),
                      CustomTextFormField(
                          titleText: "창고 이미지", hintText: "231", width: 340),
                      CustomTextFormField(
                          titleText: "창고 위치", hintText: "전투연병장 뒤쪽", width: 340),
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
