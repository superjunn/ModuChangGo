import 'package:flutter/material.dart';
import 'package:flutter_blog/controller/user_controller.dart';
import 'package:flutter_blog/view/components/custom_elevated_button.dart';
import 'package:flutter_blog/view/components/custom_text_form_field.dart';
import 'package:flutter_blog/view/pages/post/home_page.dart';
import 'package:flutter_blog/view/pages/user/join_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final UserController u = Get.put(UserController());

  final _username = TextEditingController();
  final _password = TextEditingController();

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
                "Login in Page${u.isLogin}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              height: 200,
            ),
            _LoginForm(),
            TextButton(
                onPressed: () {
                  Get.to(() => JoinPage());
                },
                child: Text("Not members yet?")),
          ],
        ),
      ),
    );
  }

  Widget _LoginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: _username,
            funvalidator: (value) {},
            hintText: "Username",
          ),
          CustomTextFormField(
            controller: _password,
            funvalidator: (value) {},
            hintText: "Password",
          ),
          CustomElevatedButton(
            buttonText: "Log in",
            pageRoute: () async {
              String token =
                  await u.login(_username.text.trim(), _password.text.trim());
              if (token != "-1") {
                Get.to(() => HomePage());
              } else {
                Get.snackbar("Login Try", "Login Failed");
              }
            },
          ),
        ],
      ),
    );
  }
}
