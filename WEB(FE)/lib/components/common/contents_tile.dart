import 'package:flutter/material.dart';

class ContentsTile extends StatelessWidget {
  final String contentsName;
  final String niin;
  final String image;

  const ContentsTile({
    required this.contentsName,
    required this.niin,
    required this.image,
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
      title: Text("${contentsName} : $image개"),
      subtitle: Text("인식번호 : $niin"),
    );
  }
}
