import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/home_page/home_page.dart';
import 'package:moduchango/pages/login_page/login_page.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final StatusEB stat;
  final double width;

  const CustomElevatedButton({
    required this.buttonText,
    required this.stat,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: gap_xs),
      child: SizedBox(
        width: width,
        child: Expanded(
          child: ElevatedButton(
            child: Text("${buttonText}"),
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            onPressed: () {
              if (stat == StatusEB.login) {
                Get.to(() => HomePage());
              } else if (stat == StatusEB.join) {
                Get.to(() => LoginPage());
              } else if (stat == StatusEB.storageInit) {
                Get.to(() => HomePage());
              } else if (stat == StatusEB.shelfInit) {
                Get.to(() => HomePage());
              }
            },
          ),
        ),
      ),
    );
  }
}

enum StatusEB {
  login,
  join,
  storageInit,
  shelfInit,
}
