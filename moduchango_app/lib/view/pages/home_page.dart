import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango_app/view/pages/page_drawer.dart';
import 'package:moduchango_app/view/design/size.dart';
import 'package:moduchango_app/view/design/styles.dart';
import 'package:moduchango_app/view/pages/login_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: PageDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text("7포병여단 662대대"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: TextButton(onPressed: () {}, child: Text("창고현황")),
              ),
            ),
            Expanded(
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text("입고/출고"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Widget _navigation(BuildContext context) {
//   return Container(
//     width: getDrawerWidth(context),
//     height: double.infinity,
//     color: Colors.white,
//     child: SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextButton(
//               onPressed: () {
//                 // Get.to(() => WritePage());
//               },
//               child: Text(
//                 "마이페이지",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black54,
//                 ),
//               ),
//             ),
//             Divider(),
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//                 // Get.to(() => UserInfo());
//               },
//               child: Text(
//                 "커뮤니티",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black54,
//                 ),
//               ),
//             ),
//             Divider(),
//             TextButton(
//               onPressed: () {
//                 Get.to(LoginPage());
//               },
//               child: Text(
//                 "로그아웃",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black54,
//                 ),
//               ),
//             ),
//             Divider(),
//           ],
//         ),
//       ),
//     ),
//   );
// }
