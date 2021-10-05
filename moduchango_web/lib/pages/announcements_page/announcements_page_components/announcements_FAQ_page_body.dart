import 'package:flutter/material.dart';

import 'package:moduchango/pages/announcements_page/announcements_page_components/announcements_page_left_menu_bar.dart';


class AnnouncementsFAQPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnnouncementsPageLeftMenuBar(),
        Text("공지사항 FAQ 페이지"),
      ],
    );
  }
}
