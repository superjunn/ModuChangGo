import 'package:flutter/material.dart';

class ContentsTile extends StatelessWidget {
  final String contentsName;
  final String rfidInfo;
  final String Storage;
  final String Shelf;
  final String Row;
  final String Col;
  final int cnt;

  const ContentsTile({
    required this.contentsName,
    required this.rfidInfo,
    required this.Storage,
    required this.Shelf,
    required this.cnt,
    required this.Row,
    required this.Col,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.storage),
      ),
      title: Text("${contentsName} : ${cnt}개 인식번호 : ${rfidInfo}"),
      subtitle: Text("${Storage}의 ${Shelf}번째 선반의 (${Row},${Col})"),
    );
  }
}
