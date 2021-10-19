import 'package:flutter/material.dart';
import 'package:moduchango_app/view/pages/components/page_drawer.dart';

class StockReleaseDetailPage extends StatelessWidget {
  final String? id;
  final String? NIIN;
  final String? productName;
  final String? storageName;
  final String? state;
  final DateTime? time;

  StockReleaseDetailPage({
    this.id,
    this.NIIN,
    this.productName,
    this.storageName,
    this.state,
    this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: PageDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(this.productName!),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("${this.NIIN}"),
            subtitle: Text("제품 일련번호"),
          ),
          ListTile(
            leading: Icon(Icons.home_filled),
            title: Text("${this.storageName}"),
            subtitle: Text("창고 이름"),
          ),
          ListTile(
            leading: Icon(Icons.compare_arrows),
            title: Text("${this.state}"),
            subtitle: Text("입/출고 여부"),
          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text("${this.time}"),
            subtitle: Text("입/출고 시간"),
          )
        ],
      ),
    );
  }
}
