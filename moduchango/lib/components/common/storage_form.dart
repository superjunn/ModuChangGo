import 'package:flutter/material.dart';
import 'package:moduchango/design_data/colors.dart';

class StorageForm extends StatelessWidget {
  final edge_length;

  const StorageForm({required this.edge_length});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: kAccentColor,
          ),
          width: edge_length,
          height: edge_length,
        ),
      ),
    );
  }
}
