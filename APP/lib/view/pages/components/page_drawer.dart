import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango_app/view/design/colors.dart';
import 'package:moduchango_app/view/pages/community/FAQ_page.dart';
import 'package:moduchango_app/view/pages/community/announcement_page.dart';
import 'package:moduchango_app/view/pages/login_page.dart';
import 'package:moduchango_app/view/pages/my_page/my_page_edit.dart';
import 'package:moduchango_app/view/pages/my_page/my_page_view.dart';

class PageDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: <Color>[kColor5, Colors.blue])),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      elevation: 10,
                      child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Image.asset(
                            'assets/logo2.png',
                            height: 100,
                          )),
                    ),
                    // Text(
                    //   '모두의 창고',
                    //   style: TextStyle(color: Colors.black, fontSize: 20.0),
                    // )
                  ],
                ),
              )),
          CustomListTile(Icons.person, '회원정보보기', 1),
          CustomListTile(Icons.edit, '회원정보수정', 2),
          CustomListTile(Icons.notifications, '공지사항', 3),
          CustomListTile(Icons.question_answer, 'FAQ', 4),
          CustomListTile(Icons.logout, '로그아웃', 5),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final int route;
  //그냥 함수 대신에 int로 아이디 넘겨받아서 이 클래스 안에 각각 id에 맞게 겟엑스를 구현해보자
  CustomListTile(this.icon, this.text, this.route);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
            splashColor: kColor5,
            onTap: () {
              if (route == 1) {
                Get.to(() => MyPageView());
              } else if (route == 2) {
                Get.to(() => MyPageEdit());
              } else if (route == 3) {
                Get.to(() => AnnouncementPage());
              } else if (route == 4) {
                Get.to(() => FAQPage());
              } else if (route == 5) {
                Get.to(() => LoginPage());
              } else {
                return null;
              }
            },
            child: Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(icon),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                        ),
                        Text(
                          text,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_right)
                  ],
                ))),
      ),
    );
  }
}
