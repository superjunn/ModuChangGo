import 'package:flutter/material.dart';
import 'package:flutter_practice/components/custom_text_form_field.dart';
import 'package:flutter_practice/pages/home_page.dart';
import 'package:flutter_practice/utility/validator.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _value = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              CustomTextFormField(
                controller: _value,
                validator: validateValue(),
              ),
              TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Get.to(() => HomePage(), arguments: _value);
                    } else {
                      print("_formKey.currentState is not valid1");
                    }
                  },
                  child: Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }
}
