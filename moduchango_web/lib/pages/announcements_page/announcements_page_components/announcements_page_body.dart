import 'package:flutter/material.dart';

import 'package:moduchango/pages/announcements_page/announcements_page_components/announcements_page_left_menu_bar.dart';


class AnnouncementsPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnnouncementsPageLeftMenuBar(),
        Expanded(
          child: Text("Announcements Page"),
        ),
      ],
    );
  }
}
