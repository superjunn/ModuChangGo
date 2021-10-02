import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog/controller/user_controller.dart';
import 'package:flutter_blog/domain/user/user_repository.dart';
import 'package:flutter_blog/styles.dart';
import 'package:flutter_blog/util/validator_util.dart';
import 'package:flutter_blog/view/components/custom_elevated_button.dart';
import 'package:flutter_blog/view/components/custom_text_form_field.dart';
import 'package:flutter_blog/view/pages/post/home_page.dart';
import 'package:flutter_blog/view/pages/user/join_page.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final UserController u = Get.put(UserController());
  final _username = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(height: 100),
            Container(
              alignment: Alignment.center,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, size: 100),
                  Text(
                    "모두의 창고",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "병영창고 관리의 혁신",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            _loginForm(),
          ],
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            CustomTextFormField(
              controller: _username,
              hint: "Username",
              funValidator: validateUsername(),
            ),
            CustomTextFormField(
              controller: _password,
              hint: "Password",
              funValidator: validatePassword(),
            ),
            CustomElevatedButton(
              text: "로그인",
              funPageRoute: () async {
                if (_formKey.currentState!.validate()) {
                  //Get.to(HomePage());
                  int result = await u.login(
                      _username.text.trim(), _password.text.trim());
                  if (result == 1) {
                    Get.to(() => HomePage());
                  } else {
                    Get.snackbar("로그인 시도", "로그인 실패");
                  }
                }
              },
            ),
            TextButton(
              onPressed: () {
                Get.to(JoinPage());
              },
              child: Text(
                "아직 회원가입이 안 되어 있나요?",
                style: TextStyle(color: kColor1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
