import 'package:flutter/material.dart';

class CustomHistoryTile extends StatelessWidget {
  final String? id;
  final String? NIIN;
  final String? productName;
  final String? storageName;
  final String? state;
  final DateTime? time;

  CustomHistoryTile({
    this.id,
    this.NIIN,
    this.productName,
    this.storageName,
    this.state,
    this.time,
  });

  @override
  Widget build(BuildContext context) {
    Text? leading_text;
    if (this.state == "입고") {
      Text leading_text = Text("입고", style: TextStyle(color: Colors.green));
    } else {
      Text leading_text = Text("출고", style: TextStyle(color: Colors.redAccent));
    }

    return ListTile(
      leading: leading_text,
      title: Text("${this.productName}"),
      subtitle: Text("창고: ${this.storageName}"),
      onTap: () {},
    );
  }
}
