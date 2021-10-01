import 'package:flutter/material.dart';
import 'package:flutter_blog/view/components/custom_elevated_button.dart';
import 'package:flutter_blog/view/components/custom_text_form_field.dart';
import 'package:flutter_blog/view/pages/user/login_page.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';

class JoinPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                "Sign in Page",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              height: 200,
            ),
            _joinForm(),
            TextButton(
                onPressed: () {
                  Get.to(() => LoginPage());
                },
                child: Text("Already member of this site?")),
          ],
        ),
      ),
    );
  }

  Widget _joinForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            funvalidator: (value) {
              if (!isNumeric(value)) {
                return "Username is not Numeric";
              } else {
                return null;
              }
            },
            hintText: "Username",
          ),
          CustomTextFormField(
            funvalidator: () {},
            hintText: "Password",
          ),
          CustomTextFormField(
            funvalidator: () {},
            hintText: "Email",
          ),
          CustomElevatedButton(
            buttonText: "Sign in",
            pageRoute: () {
              Get.to(() => LoginPage());
            },
          ),
        ],
      ),
    );
  }
}
