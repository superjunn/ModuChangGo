import 'package:flutter/material.dart';
import 'package:moduchango/components/common/contents_tile.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/history_page/history_page_components/history_page_left_menu_bar.dart';

class HistoryByContentsPage extends StatelessWidget {
  var refreshKey = GlobalKey<RefreshIndicatorState>();

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
              child: _buildBody(),
            ),
          ),
          PageFooter(),
        ],
      ),
    );
  }

  _buildBody() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HistoryPageLeftMenuBar(),
        Expanded(
          child: Wrap(
            spacing: 10,
            children: List.generate(
                3,
                (index) => ContentsTile(
                      contentsName: "방상외피",
                      image: "훈련용창고",
                      niin: "띠바",
                    )),
          ),
        ),
        Text("history by contentspagebody"),
      ],
    );
  }
}
