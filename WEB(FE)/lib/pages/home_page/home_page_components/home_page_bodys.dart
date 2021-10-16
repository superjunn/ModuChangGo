import 'package:flutter/material.dart';
import 'package:moduchango/design_data/size.dart';
import 'home_page_stock_release.dart';
import 'home_page_mypage.dart';
import 'home_page_notification.dart';
import 'home_page_storehouse.dart';

class HomePageBodys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white54,
      width: getBodyWidth(context),
      child: Column(
        
        children: [
          HomePageStoreHouse(),
          HomePageInout(),
          HomePageNotification(),
          HomePageMyPage(),
        ],
      ),
    );
  }
}
