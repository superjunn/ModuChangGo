import 'package:flutter/material.dart';

class StorageDetailPageContents extends StatelessWidget {
  final contents = List.generate(20, (i) {
    return ListTile(
      leading: Icon(IconData(983518, fontFamily: 'MaterialIcons')),
      title: Text("물품: 방상외피"),
      subtitle: Text("개수: 12개"),
    );
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: contents,
    );
  }
}
