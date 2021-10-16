import 'package:flutter/material.dart';
import 'package:moduchango/design_data/size.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final double width;
  final funpageRoute;

  const CustomElevatedButton({
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
            child: Text("${buttonText}", style : TextStyle(color: Colors.white)),
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
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
