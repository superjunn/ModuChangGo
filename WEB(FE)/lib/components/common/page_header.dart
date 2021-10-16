import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/components_detail/page_header_function_block.dart';
import 'package:moduchango/components/common/components_detail/page_header_logo.dart';
import 'package:moduchango/design_data/colors.dart';
import 'package:moduchango/pages/announcements_page/announcements_page.dart';
import 'package:moduchango/pages/history_page/history_byDate_page/history_byDate_view_page.dart';
import 'package:moduchango/pages/home_page/home_page.dart';
import 'package:moduchango/pages/join_page/join_page.dart';
import 'package:moduchango/pages/login_page/login_page.dart';
import 'package:moduchango/pages/my_page/my_page_view/my_page_view_page.dart';
import 'package:moduchango/pages/storehouse_page/storehouse_view/storehouse_my_storages_view_page.dart';

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
                    mText: "창고 현황",
                    funPageRoute: () {
                      Get.to(() => StoreHouseMyStoragesViewPage());
                    },
                  ),
                  PageHeaderFunctionBlock(
                    mText: "입/출고 내역 보기",
                    funPageRoute: () {
                      Get.to(() => HistoryByDateViewPage());
                    },
                  ),
                  PageHeaderFunctionBlock(
                    mText: "공지사항",
                    funPageRoute: () {
                      Get.to(() => AnnouncementsPage());
                    },
                  ),
                  PageHeaderFunctionBlock(
                    mText: "마이 페이지",
                    funPageRoute: () {
                      Get.to(() => MyPageViewPage());
                    },
                  ),
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
                    funPageRoute: () {
                      _sendEmail(context);
                    },
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

  void _sendEmail(BuildContext context) async {
    final Email email = Email(
      body: '',
      subject: '[양파가족 문의]',
      recipients: ['onionfamily.official@gmail.com'],
      cc: [],
      bcc: [],
      attachmentPaths: [],
      isHTML: false,
    );

    try {
      await FlutterEmailSender.send(email);
    } catch (error) {
      String title =
          "기본 메일 앱을 사용할 수 없기 때문에 앱에서 바로 문의를 전송하기 어려운 상황입니다.\n\n아래 이메일로 연락주시면 친절하게 답변해드릴게요 :)\n\nonionfamily.official@gmail.com";
      String message = "";
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text(title),
          content: Text(message),
        ),
      );
    }
  }
}
