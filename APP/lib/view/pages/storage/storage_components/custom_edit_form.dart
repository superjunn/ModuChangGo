import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango_app/controller/storage_controller.dart';
import 'package:moduchango_app/view/components/custom_text_form_field.dart';
import 'package:moduchango_app/view/design/colors.dart';
import 'package:moduchango_app/view/design/size.dart';
import 'package:moduchango_app/view/pages/home_page.dart';
import 'package:moduchango_app/view/pages/join_page.dart';
import 'package:moduchango_app/view/pages/storage/storage_components/custom_edit_text_form_field.dart';
import 'package:validators/validators.dart';

class CustomEditForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final int storage_index;

  CustomEditForm({required this.storage_index});

  @override
  Widget build(BuildContext context) {
    StorageController s = Get.find();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "창고 이름 수정",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            CustomEditTextFormField(
              title: s.storages[storage_index].storageName!,
              myValid: (value) {
                if (value!.isEmpty) {
                  return "관리자 ID를 입력하세요.";
                } else if (!isAlphanumeric(value)) {
                  return "ID는 영어와 숫자로만 이루어집니다.";
                } else {
                  return null;
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "창고 위치 수정",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            CustomEditTextFormField(
                title: "비밀번호",
                myValid: (value) {
                  if (value!.isEmpty) {
                    return "비밀번호를 입력하세요.";
                  } else if (!(3 < value.toString().length &&
                      value.toString().length < 13)) {
                    return "비밀번호는 4자 이상 12자 이하입니다.";
                  } else {
                    return null;
                  }
                }),
            SizedBox(height: large_gap),
            Center(
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                  backgroundColor: kColor5,
                  primary: Colors.black,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  minimumSize: Size(100, 40),
                ),
                onPressed: () {},
                child: Text("수정 완료"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
