import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moduchango_app/controller/user_controller.dart';
import 'package:moduchango_app/domain/user/user_repository.dart';
import 'package:moduchango_app/util/validator_util.dart';
import 'package:moduchango_app/view/components/custom_elevated_button.dart';
import 'package:moduchango_app/view/components/custom_text_form_field.dart';
import 'package:moduchango_app/view/pages/post/home_page.dart';
import 'package:moduchango_app/view/pages/user/join_page.dart';
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
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              child: Text(
                "로그인 페이지",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
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
                int result =
                    await u.login(_username.text.trim(), _password.text.trim());
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
            child: Text("아직 회원가입이 안 되어 있나요?"),
          )
        ],
      ),
    );
  }
}
