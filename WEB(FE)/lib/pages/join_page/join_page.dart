import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/custom_elevated_button.dart';
import 'package:moduchango/components/common/custom_outlined_button.dart';
import 'package:moduchango/components/common/custom_text_form_field.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/home_page/home_page.dart';

class JoinPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _userID = TextEditingController();
  final _userPwd = TextEditingController();

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
              child: _buildJoinPageBody(),
            ),
          ),
          PageFooter(),
        ],
      ),
    );
  }

  _buildJoinPageBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 600,
        width: 600,
        decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFormField(
                    titleText: "아이디", hintText: "아이디를 입력해주세요", width: 340),
                CustomTextFormField(
                    titleText: "비밀번호", hintText: "비밀번호를 입력해주세요", width: 340),
                // CustomTextFormField(
                //     titleText: "부대", hintText: "부대를 입력해주세요", width: 340),
                CustomElevatedButton(
                  buttonText: "로그인",
                  funpageRoute: () => Get.to(() => HomePage()),
                  width: 460,
                ),
                CustomOutlinedButton(
                  buttonText: "회원가입",
                  funpageRoute: () => Get.to(() => JoinPage()),
                  width: 460,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
