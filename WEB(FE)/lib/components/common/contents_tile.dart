import 'package:flutter/material.dart';

class ContentsTile extends StatelessWidget {
  final String contentsName;
  final String niin;
  final String amount;

  const ContentsTile({
    required this.contentsName,
    required this.niin,
    required this.amount,
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
      title: Text("${contentsName} : $amount개"),
      subtitle: Text("인식번호 : $niin"),
    );
  }
}
