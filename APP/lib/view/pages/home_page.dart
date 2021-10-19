import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango_app/controller/storage_controller.dart';
import 'package:moduchango_app/view/design/colors.dart';
import 'package:moduchango_app/view/pages/components/page_drawer.dart';
import 'package:moduchango_app/view/pages/stock_release_history/stock_release_history.dart';
import 'package:moduchango_app/view/pages/storage/storage_main_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _index = 0;
  var _pages = [StorageMainPage(), StockReleaseHistory()];

  @override
  Widget build(BuildContext context) {
    // s.findAll();

    return Scaffold(
      drawer: PageDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text("7포병여단 662대대"),
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kColor6,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "창고현황"),
          BottomNavigationBarItem(
              icon: Icon(Icons.compare_arrows), label: "입출고 내역"),
        ],
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: PageDrawer(),
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.black),
//         centerTitle: true,
//         title: Text("7포병여단 662대대"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Expanded(
//               child: Center(
//                 child: TextButton(
//                     style: TextButton.styleFrom(
//                       textStyle: TextStyle(fontWeight: FontWeight.bold),
//                       backgroundColor: kColor5,
//                       primary: Colors.black,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30)),
//                       minimumSize: Size(80, 40),
//                     ),
//                     onPressed: () {
//                       Get.to(() => StorageMainPage());
//                     },
//                     child: Text("창고현황")),
//               ),
//             ),
//             Expanded(
//               child: Center(
//                 child: TextButton(
//                   style: TextButton.styleFrom(
//                     textStyle: TextStyle(fontWeight: FontWeight.bold),
//                     backgroundColor: kColor5,
//                     primary: Colors.black,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30)),
//                     minimumSize: Size(80, 40),
//                   ),
//                   onPressed: () {
//                     Get.to(() => StockReleaseHistory());
//                   },
//                   child: Text("입/출고 내역 보기"),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
