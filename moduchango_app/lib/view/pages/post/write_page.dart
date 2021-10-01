import 'package:flutter/material.dart';
import 'package:moduchango_app/controller/post_controller.dart';
import 'package:moduchango_app/util/validator_util.dart';
import 'package:moduchango_app/view/components/custom_elevated_button.dart';
import 'package:moduchango_app/view/components/custom_text_area.dart';
import 'package:moduchango_app/view/components/custom_text_form_field.dart';
import 'package:moduchango_app/view/pages/post/home_page.dart';
import 'package:get/get.dart';

class WritePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _content = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              CustomTextFormField(
                controller: _title,
                hint: "Title",
                funValidator: validateTitle(),
              ),
              CustomTextArea(
                controller: _content,
                hint: "Content",
                funValidator: validateContent(),
              ),
              CustomElevatedButton(
                text: "글쓰기 완료",
                funPageRoute: () async {
                  if (_formKey.currentState!.validate()) {
                    await Get.find<PostController>()
                        .save(_title.text, _content.text);
                    Get.off(() => HomePage());
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
