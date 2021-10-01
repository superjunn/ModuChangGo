// Margin
import 'package:flutter/cupertino.dart';

const double gap_xl = 40;
const double gap_l = 30;
const double gap_m = 20;
const double gap_s = 10;
const double gap_xs = 5;

const double header_height = 620;

// To get the 70 percent of the size of the monitor ??
// MediaQuery
double getBodyWidth(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.7;
}

double getMonitorWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
