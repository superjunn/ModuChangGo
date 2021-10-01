import 'package:flutter/material.dart';
import 'package:flutter_blog/view/components/custom_elevated_button.dart';
import 'package:flutter_blog/view/components/custom_text_area.dart';
import 'package:flutter_blog/view/components/custom_text_form_field.dart';
import 'package:get/get.dart';

class UpdatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          CustomTextFormField(
            funvalidator: () {},
            hintText: "Title",
            initialValue: "Title??",
          ),
          CustomTextArea(
            funvalidator: () {},
            hintText: "Content",
            initialValue: "contents??",
          ),
          CustomElevatedButton(
            buttonText: "Submit",
            pageRoute: () => Get.back(),
          )
        ],
      ),
    );
  }
}
