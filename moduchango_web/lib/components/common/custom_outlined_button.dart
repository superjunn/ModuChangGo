import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/home_page/home_page.dart';
import 'package:moduchango/pages/login_page/login_page.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String buttonText;
  final StatusOB stat;
  final int width;

  const CustomOutlinedButton({
    required this.buttonText,
    required this.stat,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical : gap_xs),
      child: ElevatedButton(
        child: Text("${buttonText}"),
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.teal,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
        onPressed: () {
          if (stat == StatusOB.login) {
            Get.to(() => HomePage());
          } else if (stat == StatusOB.join) {
            Get.to(() => LoginPage());
          } else if (stat == StatusOB.storageInit) {
            Get.to(() => HomePage());
          } else if (stat == StatusOB.shelfInit) {
            Get.to(() => HomePage());
          }
        },
      ),
    );
  }
}

enum StatusOB {
  login,
  join,
  storageInit,
  shelfInit,
}
