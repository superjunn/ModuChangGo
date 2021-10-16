import 'package:flutter/material.dart';
import 'package:moduchango_app/view/design/colors.dart';
import 'package:moduchango_app/view/pages/stock_release_history/custom_history_tile.dart';
import 'package:moduchango_app/view/pages/stock_release_history/stock_release_history_contents.dart';
import 'package:moduchango_app/view/pages/stock_release_history/stock_release_history_date.dart';
import 'package:moduchango_app/view/pages/stock_release_history/stock_release_history_storage.dart';
import 'package:moduchango_app/view/pages/storage/storage_components/custom_contents_tile.dart';

class StockReleaseHistory extends StatefulWidget {
  @override
  _StockReleaseHistoryState createState() => _StockReleaseHistoryState();
}

class _StockReleaseHistoryState extends State<StockReleaseHistory> {
  // var _index = 0;
  // var _pages = [
  //   StockReleaseHistoryDate(),
  //   StockReleaseHistoryContents(),
  //   StockReleaseHistoryStorage(),
  // ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[
            StockReleaseHistoryDate(),
            StockReleaseHistoryContents(),
            StockReleaseHistoryStorage(),
          ],
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              new TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                tabs: [
                  new Tab(text: "날짜별"),
                  new Tab(text: "물품별"),
                  new Tab(text: "창고별"),
                ],
              )
            ],
          ),
        ),
        //여기에 139pg 참고해서 탭바뷰 넣어야됨
      ),
    );
  }
}
