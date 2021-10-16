import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/page_left_menu_bar.dart';
import 'package:moduchango/pages/announcements_page/announcements_FAQ.dart';
import 'package:moduchango/pages/announcements_page/announcements_page.dart';

class AnnouncementsPageLeftMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageLeftMenuBar(
      title: "창고 현황",
      functionsList: [
        "공지사항",
        "자주 묻는 질문"
      ],
      funpageRouteList: [
        () => Get.to(() => AnnouncementsPage()),
        () => Get.to(() => AnnouncementsFAQPage()),
      ],
    );
  }
}
