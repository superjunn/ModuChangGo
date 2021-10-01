import 'package:flutter/material.dart';
import 'package:flutter_blog/view/components/custom_elevated_button.dart';
import 'package:flutter_blog/view/components/custom_text_area.dart';
import 'package:flutter_blog/view/components/custom_text_form_field.dart';
import 'package:flutter_blog/view/pages/post/home_page.dart';
import 'package:get/get.dart';

class WritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          CustomTextFormField(funvalidator: () {}, hintText: "Title"),
          CustomTextArea(funvalidator: () {}, hintText: "Content"),
          CustomElevatedButton(
            buttonText: "Log in",
            pageRoute: () => Get.to(HomePage()),
          )
        ],
      ),
    );
  }
}
