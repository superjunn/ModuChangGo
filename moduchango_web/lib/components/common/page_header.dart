import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/components_detail/page_header_function_block.dart';
import 'package:moduchango/components/common/components_detail/page_header_logo.dart';
import 'package:moduchango/design_data/colors.dart';
import 'package:moduchango/pages/body1_page.dart';
import 'package:moduchango/pages/body2_page.dart';
import 'package:moduchango/pages/home_page.dart';
import 'package:moduchango/pages/join_page.dart';
import 'package:moduchango/pages/login_page.dart';
// import 'package:flutter_email_sender/flutter_email_sender.dart';

class PageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: kAppBarColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 50),
                  PageHeaderLogo(
                    funPageRoute: () => Get.to(HomePage()),
                  ),
                  SizedBox(width: 50),
                  PageHeaderFunctionBlock(
                    mText: "page1",
                    funPageRoute: () {
                      Get.to(() => Body1Page());
                    },
                  ),
                  PageHeaderFunctionBlock(
                    mText: "page2",
                    funPageRoute: () {
                      Get.to(() => Body2Page());
                    },
                  ),
                  PageHeaderFunctionBlock(mText: "page3"),
                  PageHeaderFunctionBlock(mText: "page4"),
                  Spacer(),
                  PageHeaderFunctionBlock(
                    mText: "Login",
                    funPageRoute: () {
                      Get.to(() => LoginPage());
                    },
                  ),
                  Container(width: 1, height: 20, color: Colors.black),
                  PageHeaderFunctionBlock(
                    mText: "Join",
                    funPageRoute: () {
                      Get.to(() => JoinPage());
                    },
                  ),
                  Container(width: 1, height: 20, color: Colors.black),
                  PageHeaderFunctionBlock(
                    mText: "Contact Us",
                    // funPageRoute: void _sendEmail(),
                  ),
                  SizedBox(width: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void _sendEmail() async {
  //   final Email email = Email(
  //     body: '',
  //     subject: '[양파가족 문의]',
  //     recipients: ['onionfamily.official@gmail.com'],
  //     cc: [],
  //     bcc: [],
  //     attachmentPaths: [],
  //     isHTML: false,
  //   );
  //
  //   try {
  //     await FlutterEmailSender.send(email);
  //   } catch (error) {
  //     String title = "기본 메일 앱을 사용할 수 없기 때문에 앱에서 바로 문의를 전송하기 어려운 상황입니다.\n\n아래 이메일로 연락주시면 친절하게 답변해드릴게요 :)\n\nonionfamily.official@gmail.com";
  //     String message = "";
  //     _showErrorAlert(title: title, message: message);
  //   }
  // }
}
