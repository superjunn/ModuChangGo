import 'package:flutter/material.dart';
import 'package:moduchango/components/common/components_detail/page_left_menu_bar_function_block.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/design_data/styles.dart';

class PageLeftMenuBar extends StatelessWidget {
  final String title;
  final List<String> functionsList;
  final List<dynamic> funpageRouteList;

  const PageLeftMenuBar(
      {required this.title, required this.functionsList, required this.funpageRouteList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: gap_l, vertical: 6),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("$title", style: h2()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: 180,
                      height: 3,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  functionsList.length,
                  (index) => PageLeftMenuBarFunctionBlock(
                    mText: functionsList[index],
                    funPageRoute: funpageRouteList[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
