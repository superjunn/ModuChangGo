import 'package:flutter/material.dart';
import 'package:moduchango/components/common/custom_text_form_field.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_page_components/storehouse_page_left_menu_bar.dart';


class StorageInitPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();


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
            child: Column(
              children: [
                CustomTextFormField(
                    titleText: "창고 이름", hintText: "창고 이름을 입력해주세요", width: 340),
                CustomTextFormField(
                    titleText: "선반 개수", hintText: "창고 내 선반 개수를 입력해주세요", width: 340),
                CustomTextFormField(
                    titleText: "창고 위치", hintText: "창고 위치를 기록해주세요", width: 340),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
