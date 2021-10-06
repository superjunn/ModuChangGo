import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/pages/home_page/home_page.dart';
import 'package:moduchango/pages/login_page/login_page.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final Status stat;
  const CustomElevatedButton({
    required this.buttonText,
    required this.stat,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("${buttonText}"),
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.teal,
        shadowColor: Colors.red,
        elevation: 10,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
      onPressed: () {
        if (stat == Status.login) {
          Get.to(() => HomePage());
        } else if (stat == Status.join) {
          Get.to(() => LoginPage());
        } else if (stat == Status.storageInit) {
          Get.to(() => HomePage());
        } else if (stat == Status.shelfInit) {
          Get.to(() => HomePage());
        }
      },
    );
  }
}

enum Status {
  login,
  join,
  storageInit,
  shelfInit,
}
