import 'package:flutter/material.dart';
import 'package:moduchango/design_data/size.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String buttonText;
  final double width;
  final funpageRoute;

  const CustomOutlinedButton({
    required this.buttonText,
    required this.width,
    required this.funpageRoute
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: gap_xs),
      child: SizedBox(
        height: 30,
        width: width,
        child: Expanded(
          child: ElevatedButton(
            child: Text("${buttonText}"),
            style: OutlinedButton.styleFrom(
              primary: Colors.teal,
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            onPressed: funpageRoute,
          ),
        ),
      ),
    );
  }
}
