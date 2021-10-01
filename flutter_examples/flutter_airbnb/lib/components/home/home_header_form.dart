import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_field.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeHeaderForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        alignment: Alignment(-0.6, 0),
        child: Container(
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(gap_l),
              child: Column(
                children: [
                  _buildFormTitle(), // Form Widget Title Area
                  _buildFormField(), // Form Widget Text input Area
                  _buildFormSubmit(), // Form Widget Text Sending Button Area
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text(
          "Search for your accomodation in Airbnb",
          style: h4(),
        ),
        SizedBox(height: gap_xs),
        Text(
          "혼자하는 여행에 적합한 개인실부터 여럿이함께하는 여행에 좋은 '공간전체' 숙소까지, 에어비엔비에 다 있습니다.",
          style: body1(),
        ),
        SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildFormField() {
    return Column(
      children: [
        CommonFormField(prefixText: "Location", hintText: "Recommendation"),
        SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(
              child: CommonFormField(
                  prefixText: "Check in", hintText: "Enter Date"),
            ),
            SizedBox(width: gap_xs),
            Expanded(
              child: CommonFormField(
                  prefixText: "Check out", hintText: "Enter Date"),
            ),
          ],
        ),
        SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(
              child: CommonFormField(
                  prefixText: "Adult ", hintText: "Enter number of adults"),
            ),
            SizedBox(width: gap_xs),
            Expanded(
              child: CommonFormField(
                  prefixText: "Children", hintText: "Enter number of children"),
            ),
          ],
        ),
        SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildFormSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          print("Submit button is clicked");
        },
        child: Text(
          "Search",
          style: hsubtitle1(mColor: Colors.white),
        ),
      ),
    );
  }
}
