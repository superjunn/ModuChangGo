import 'package:flutter/material.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/announcements_page/announcements_page_components/announcements_page_body.dart';

class AnnouncementsFAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    double currentSize = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          PageHeader(),
          Text("공지사항 FAQ 페이지"),
          PageFooter(),
        ],
      ),
    );
  }
}
